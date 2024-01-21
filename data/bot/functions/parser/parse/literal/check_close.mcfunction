execute if data storage glm:parser stack[-1].metadata.close.type if data storage glm:parser current{value:["whitespace"]} run data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser stack[-1].metadata.close.type unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/close

execute unless data storage glm:parser stack[-1].metadata.close.type run data modify storage glm:parser close set value true