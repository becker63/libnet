## This module implements deriveable types. The concept is simple, you supply
## converters to go from one or more types into another type, then you can
## define procedures with a nice type signature and tell the system to derive
## the procedure from the converters. This generates a new procedure which takes
## the base type, runs all the necessary converters, and calls the initial
## typed procedure.
##
## Example:
##   import jester, strutils, json, deriveables
##
##   type
##     UserID = distinct int
##     User = object
##       name: string
##
##   proc getUserId(r: Request): UserId {.deriveable.} =
##     UserID(r.params["id"].parseInt)
##
##   proc getUser(u: UserID): User {.deriveable.} =
##     # Do database lookup for the user ID and return a user object
##     discard
##
##   proc showUser(p: User): string {.derive: Request.} =
##     "<html><body>This is the page for user " & p.name & "</body></html>"
##
##   routes:
##     get "/user/@id": resp showUser(request)
##
## If a type conversion fails it will throw a ``DerivingError`` which just wraps
## the actual error. This means that it's easy to distinguish errors happening
## during conversion vs. execution of a derived procedure.

import macros, tables, hashes, sequtils, sets

type
  NimTypeNode = distinct NimNode
  DerivingError* = object of CatchableError

var deriveableTypes {.compileTime.}:
  Table[NimTypeNode, tuple[conv: NimNode, types: seq[NimTypeNode]]]

# ---------------------------------------------------------------------------
# 🩹 Nim 2.2+ compatibility patch
# Upstream assumed all NimTypeNodes are nnkSym. Modern Nim returns
# typedesc / type / distinct AST nodes that are not symbols.
# ---------------------------------------------------------------------------

proc hash(x: NimTypeNode): Hash =
  ## Hash by textual form; safe for any node kind (nnkSym, nnkPtrTy, etc.)
  result = hash(x.NimNode.repr)

proc `==`(x, y: NimTypeNode): bool =
  ## Equality by textual form; avoids getType/sameType crashes.
  result = (x.NimNode.repr == y.NimNode.repr)

# ---------------------------------------------------------------------------

proc `$`(x: NimTypeNode): string =
  x.NimNode.repr

macro derive*(types: typed, ys: varargs[typed]): untyped =
  ## Can either be attached as a custom pragma or called on a previous
  ## definition. Takes a list of the types for the new signature of the proc.
  ## Both the old and the derived definition will exist.
  result = newStmtList()
  for y in ys:
    let
      routeProc = if y.kind == nnkSym: y.getImpl else: y
      initialTypes = (
        if types.kind == nnkSym: @[types.NimTypeNode]
        else: types.mapIt(it.NimTypeNode)
      ).toOrderedSet
    assert(
      routeProc.kind == nnkProcDef,
      "Route handler must be a procedure, got " & $routeProc.kind,
    )
    # Store required types
    var
      mappings: seq[seq[NimNode]]
      visitedTypes = (
        if types.kind == nnkSym: @[types.NimTypeNode]
        else: types.mapIt(it.NimTypeNode)
      ).toHashSet
    for i in 1 ..< routeProc[3].len:
      mappings.add @[]
      var
        requiredTypes: HashSet[NimTypeNode]
        newTypes: HashSet[NimTypeNode]
      requiredTypes.incl routeProc[3][i][1].NimTypeNode
      while requiredTypes.card != 0:
        for t in requiredTypes:
          if t in initialTypes:
            continue
          elif not deriveableTypes.hasKey(t):
            error("No procedure defined to get " & $t.repr, t.NimNode)
          else:
            let mapping = deriveableTypes[t]
            mappings[i - 1].insert mapping.conv
            visitedTypes.incl t
            for it in mapping.types:
              newTypes.incl it
        requiredTypes = (requiredTypes + newTypes) - visitedTypes

    # Loop through stack of mappings, generating code to do the conversion
    var
      symbols: Table[NimTypeNode, NimNode]
      callargs = @[routeProc.params[0]]
    for initialType in initialTypes:
      symbols[initialType] = genSym(nskParam, initialType.NimNode.repr)
      callargs.add newIdentDefs(symbols[initialType], initialType.NimNode)

    result.add if y.kind == nnkSym:
      newEmptyNode()
    else:
      y
    var derivedProc = newProc(ident(routeProc.name.repr), callargs)
    let initialTypesStr = $initialTypes

    for mapping in mappings:
      for map in mapping:
        let
          sym = genSym(nskLet)
          name = map.params[0].repr
        symbols[map.params[0].NimTypeNode] = sym
        var call = newCall(map.name)
        for param in map.params[1 .. ^1]:
          call.add symbols[param[1].NimTypeNode]
        derivedProc.body.add quote do:
          let `sym` =
            try:
              `call`
            except:
              raise newException(
                DerivingError,
                "Unable to derive type " & `name` & " from " & `initialTypesStr` & ": " &
                  getCurrentExceptionMsg(),
                getCurrentException(),
              )

    var call = newCall(routeProc.name)
    for param in routeProc.params[1 .. ^1]:
      call.add symbols[param[1].NimTypeNode]
    derivedProc.body.add call
    result.add derivedProc
  #echo result.repr

macro deriveable*(procDefs: varargs[typed]): untyped =
  ## Marks a procedure as supplying a derivation. This means that it takes one
  ## or more types, and returns a type. You can either attach this as a custom
  ## pragma, or you can call it after having defined your procedure and pass a
  ## list of procedures to add.
  result = newStmtList()
  for procDef in procDefs:
    let x = if procDef.kind == nnkSym: procDef.getImpl else: procDef
    assert(
      x.kind == nnkProcDef, "Route handler must be a procedure, but got: " & $x.kind
    )
    var types: seq[NimTypeNode]
    for t in 1 ..< x[3].len:
      types.add x[3][t][1].NimTypeNode
    if deriveableTypes.hasKey(x[3][0].NimTypeNode):
      error(
        "Only one procedure can provide a type, previously defined procedure for type " &
          x[3][0].repr & " was: " & deriveableTypes[x[3][0].NimTypeNode].repr,
        x,
      )
    else:
      deriveableTypes[x[3][0].NimTypeNode] = (conv: x, types: types)
    if procDef.kind != nnkSym:
      result.add procDef
