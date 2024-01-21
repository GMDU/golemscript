execute if data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser current.consumed set value true
execute unless data storage glm:parser stack[-1].metadata.status unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/object/before

execute if data storage glm:parser stack[-1].metadata{status:"key"} unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/object/key
execute if data storage glm:parser stack[-1].metadata{status:"value"} unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/object/value