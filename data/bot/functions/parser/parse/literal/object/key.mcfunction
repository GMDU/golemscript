execute if data storage glm:parser current{value:","} run data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser current{value:"}"} run data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser current{value:"}"} run data modify storage glm:parser stack[-1].metadata.status set value "closed"
execute unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/object/set_key