data modify storage bot:interpreter registry.builtin set value [{name: ["p","l","a","c","e"], id: "place", args: [{type: "integer"}, {type: "array", value: [{type: "integer"},{type: "integer"},{type: "integer"}]}]},{name: ["m","o","v","e"], id: "move", args: [{type: "integer"},{type: "integer"},{type: "integer"}]},{name: ["s","l","e","e","p"], id: "sleep", args: [{type: "integer"}]},{name: ["g","e","t","b","l","o","c","k"], id: "getblock", args: [{type: "integer"},{type: "integer"},{type: "integer"}]},{name: ["m","a","t","c","h"], id: "match", args: [{type: "regex"},{type: "string"}]},{name: ["p","r","i","n","t"], id: "print", args: [{type: "any"}]},{name: ["r","a","n","d","o","m"], id: "random", args: [{type: "integer"}, {type: "integer"}]},{name: ["p","o","s"], id: "pos", args: []},{name: ["i","n","v","e","n","t","o","r","y"], id: "inventory", args: []},{name: ["t","i","m","e"], id: "time", args: []},{name: ["l","e","n"], id: "len", args: [{type: "any"}]},{name: ["t","y","p","e","o","f"], id: "typeof", args: [{type: "any"}]},{name: ["d","e","l","e","t","e"], id: "delete", args: [{type: "any"}, {type: "any"}]},{name: ["s","t","r"], id: "str", args: [{type: "any"}]}, {name: ["a","b","s"], id: "abs", args: [{type: "integer"}]}, {name: ["s","i","g","n"], id: "sign", args: [{type: "integer"}]}, {name: ["m","i","n"], id: "min", args: [{type: "integer"}, {type: "integer"}]},{name: ["m","a","x"], id: "max", args: [{type: "integer"}, {type: "integer"}]}]

data modify storage bot:interpreter registry.external set value []
function #bot:api/interpreter/function/registry
