execute if data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser current.consumed set value true

execute unless data storage glm:parser stack[-1].metadata{status:"open"} unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/array/before
execute if data storage glm:parser stack[-1].metadata{status:"open"} unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/array/open