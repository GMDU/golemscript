execute if data storage glm:parser stack[-1].metadata.close run function glm:parser/close/check
execute if data storage glm:parser stack[-1].metadata.close{closed:true} run data modify storage glm:parser stack[-1].metadata.status set value "closed"
execute unless data storage glm:parser stack[-1].metadata.close{closed:true} run function glm:parser/parse/literal/alphanumeric/filter