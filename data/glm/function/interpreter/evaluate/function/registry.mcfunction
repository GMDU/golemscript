data modify storage glm:interpreter registry.builtin set value [\
  {\
    name: ["s","l","e","e","p"],\
    id: "sleep",\
    function: "glm:interpreter/evaluate/function/builtin/sleep",\
    args: [{type: "integer"}]\
  },\
  {\
    name: ["m","a","t","c","h"],\
    id: "match",\
    function: "glm:interpreter/evaluate/function/builtin/match",\
    args: [{type: "regex"}, {type: "string"}]\
  },\
  {\
    name: ["p","r","i","n","t"],\
    id: "print",\
    function: "glm:interpreter/evaluate/function/builtin/print",\
    args: [{type: "any"}]\
  },\
  {\
    name: ["r","a","n","d","o","m"],\
    id: "random",\
    function: "glm:interpreter/evaluate/function/builtin/random",\
    args: [{type: "integer"}, {type: "integer"}]\
  },\
  {\
    name: ["t","i","m","e"],\
    id: "time",\
    function: "glm:interpreter/evaluate/function/builtin/time",\
    args: []\
  },\
  {\
    name: ["l","e","n"],\
    id: "len",\
    function: "glm:interpreter/evaluate/function/builtin/len",\
    args: [{type: "any"}]\
  },\
  {\
    name: ["t","y","p","e","o","f"],\
    id: "typeof",\
    function: "glm:interpreter/evaluate/function/builtin/typeof",\
    args: [{type: "any"}]\
  },\
  {\
    name: ["d","e","l","e","t","e"],\
    id: "delete",\
    function: "glm:interpreter/evaluate/function/builtin/delete/init",\
    args: [{type: "any"}, {type: "any"}]\
  },\
  {\
    name: ["s","t","r"],\
    id: "str",\
    function: "glm:interpreter/evaluate/function/builtin/str",\
    args: [{type: "any"}]\
  },\
  {\
    name: ["a","b","s"],\
    id: "abs",\
    function: "glm:interpreter/evaluate/function/builtin/abs",\
    args: [{type: "integer"}]\
  },\
  {\
    name: ["s","i","g","n"],\
    id: "sign",\
    function: "glm:interpreter/evaluate/function/builtin/sign",\
    args: [{type: "integer"}]\
  },\
  {\
    name: ["m","i","n"],\
    id: "min",\
    function: "glm:interpreter/evaluate/function/builtin/min",\
    args: [{type: "integer"}, {type: "integer"}]\
  },\
  {\
    name: ["m","a","x"],\
    id: "max",\
    function: "glm:interpreter/evaluate/function/builtin/max",\
    args: [{type: "integer"}, {type: "integer"}]\
  },\
  {\
    name: ["i","n","t"],\
    id: "int",\
    function: "glm:interpreter/evaluate/function/builtin/int/init",\
    args: [{type: "any"}]\
  },\
  {\
    name: ["i","n","d","e","x"],\
    id: "index",\
    function: "glm:interpreter/evaluate/function/builtin/index/init",\
    args: [{type: "array"}, {type: "any"}]\
  },\
  {\
    name: ["c","o","n","t","a","i","n","s","?"],\
    id: "contains",\
    function: "glm:interpreter/evaluate/function/builtin/contains",\
    args: [{type: "array"}, {type: "any"}]\
  },\
  {\
    name: ["m","a","p"],\
    id: "map",\
    function: "glm:interpreter/evaluate/function/builtin/map/init",\
    args: [{type: "array"}, {type: "proc"}]\
  },\
  {\
    name: ["o","b","j"],\
    id: "obj",\
    function: "glm:interpreter/evaluate/function/builtin/obj/init",\
    args: [{type: "array"}]\
  },\
  {\
    name: ["a","n","y"],\
    id: "any",\
    function: "glm:interpreter/evaluate/function/builtin/any/init",\
    args: [{type: "array"}, {type: "proc"}]\
  },\
  {\
    name: ["e","v","e","r","y"],\
    id: "every",\
    function: "glm:interpreter/evaluate/function/builtin/every/init",\
    args: [{type: "array"}, {type: "proc"}]\
  },\
  {\
    name: ["s","e","t"],\
    id: "set",\
    function: "glm:interpreter/evaluate/function/builtin/set/init",\
    args: [{type: "any"}, {type: "any"}, {type: "any"}]\
  },\
  {\
    name: ["s","o","r","t"],\
    id: "sort",\
    function: "glm:interpreter/evaluate/function/builtin/sort/init",\
    args: [{type: "array"}, {type: "proc", optional: true}]\
  },\
  {\
    name: ["f","l","a","t"],\
    id: "flat",\
    function: "glm:interpreter/evaluate/function/builtin/flat/init",\
    args: [{type: "array"}, {type: "integer", optional: true}]\
  },\
  {\
    name: ["s","l","i","c","e"],\
    id: "slice",\
    function: "glm:interpreter/evaluate/function/builtin/slice/init",\
    args: [{type: ["array","string"]\
  },\
  {type: "integer"}, {type: "integer", optional: true}]\
  },\
  {\
    name: ["r","e","v","e","r","s","e"],\
    id: "reverse",\
    function: "glm:interpreter/evaluate/function/builtin/reverse/init",\
    args: [{type: ["array","string"]}]\
  },\
  {\
    name: ["j","o","i","n"],\
    id: "join",\
    function: "glm:interpreter/evaluate/function/builtin/join/init",\
    args: [{type: "array"}, {type: "string", optional: true}]\
  },\
  {\
    name: ["c","a","l","l"],\
    id: "call",\
    function: "glm:interpreter/evaluate/function/builtin/call",\
    args: [{type: "string"}, {type: "array"}]\
  },\
  {\
    name: ["f","i","n","d"],\
    id: "find",\
    function: "glm:interpreter/evaluate/function/builtin/find/init",\
    args: [{type: "array"}, {type: "proc"}]\
  },\
  {\
    name: ["f","i","l","t","e","r"],\
    id: "filter",\
    function: "glm:interpreter/evaluate/function/builtin/filter/init",\
    args: [{type: "array"}, {type: "proc"}]\
  },\
  {\
    name: ["r","e","d","u","c","e"],\
    id: "reduce",\
    function: "glm:interpreter/evaluate/function/builtin/reduce/init",\
    args: [{type: "array"}, {type: "any"}, {type: "proc"}]\
  },\
  {\
    name: ["a","s","c","i","i"],\
    id: "ascii",\
    function: "glm:interpreter/evaluate/function/builtin/ascii",\
    args: [{type: "string"}]\
  },\
  {\
    name: ["c","h","a","r"],\
    id: "char",\
    function: "glm:interpreter/evaluate/function/builtin/char",\
    args: [{type: "integer"}]\
  },\
  {\
    name: ["p","r","e","f","i","x","?"],\
    id: "prefix",\
    function: "glm:interpreter/evaluate/function/builtin/prefix/init",\
    args: [{type: "string"}, {type: "string"}]\
  },\
  {\
    name: ["s","u","f","f","i","x","?"],\
    id: "suffix",\
    function: "glm:interpreter/evaluate/function/builtin/suffix/init",\
    args: [{type: "string"}, {type: "string"}]\
  },\
  {\
    name: ["r","e","p","e","a","t"],\
    id: "repeat",\
    function: "glm:interpreter/evaluate/function/builtin/repeat/init",\
    args: [{type: "string"}, {type: "integer"}]\
  },\
  {\
    name: ["u","p","p","e","r"],\
    id: "upper",\
    function: "glm:interpreter/evaluate/function/builtin/upper/init",\
    args: [{type: "string"}]\
  },\
  {\
    name: ["l","o","w","e","r"],\
    id: "lower",\
    function: "glm:interpreter/evaluate/function/builtin/lower/init",\
    args: [{type: "string"}]\
  },\
  {\
    name: ["t","r","i","m"],\
    id: "trim",\
    function: "glm:interpreter/evaluate/function/builtin/trim",\
    args: [{type: "string"}]\
  },\
  {\
    name: ["l","t","r","i","m"],\
    id: "ltrim",\
    function: "glm:interpreter/evaluate/function/builtin/ltrim/init",\
    args: [{type: "string"}]\
  },\
  {\
    name: ["r","t","r","i","m"],\
    id: "rtrim",\
    function: "glm:interpreter/evaluate/function/builtin/rtrim/init",\
    args: [{type: "string"}]\
  },\
  {\
    name: ["s","q","u","e","e","z","e"],\
    id: "squeeze",\
    function: "glm:interpreter/evaluate/function/builtin/squeeze/init",\
    args: [{type: "string"}, {type: "string", optional: true}]\
  },\
  {\
    name: ["s","h","u","f","f","l","e"],\
    id: "shuffle",\
    function: "glm:interpreter/evaluate/function/builtin/shuffle/init",\
    args: [{type: "array"}]\
  },\
  {\
    name: ["a","r","r"],\
    id: "arr",\
    function: "glm:interpreter/evaluate/function/builtin/arr/init",\
    args: [{type: ["array", "string", "object"]}]\
  },\
  {\
    name: ["l","p","a","d"],\
    id: "lpad",\
    function: "glm:interpreter/evaluate/function/builtin/lpad/init",\
    args: [{type: "string"}, {type: "integer"}, {type: "string", optional: true}]\
  },\
  {\
    name: ["r","p","a","d"],\
    id: "rpad",\
    function: "glm:interpreter/evaluate/function/builtin/rpad/init",\
    args: [{type: "string"}, {type: "integer"}, {type: "string", optional: true}]\
  },\
  {\
    name: ["s","p","l","i","t"],\
    id: "split",\
    function: "glm:interpreter/evaluate/function/builtin/split/init",\
    args: [{type: "string"}, {type: "string"}]\
  },\
  {\
    name: ["r","e","p","l","a","c","e"],\
    id: "replace",\
    function: "glm:interpreter/evaluate/function/builtin/replace/init",\
    args: [{type: "string"}, {type: "string"}, {type: "string"}, {type: "integer", optional: true}]\
  }\
]

data modify storage glm:interpreter registry.external set value []
function #glm:api/interpreter/function/registry
