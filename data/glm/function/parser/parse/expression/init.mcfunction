execute unless data storage glm:parser stack[-1].metadata.status run function glm:parser/parse/expression/before
execute if data storage glm:parser stack[-1].metadata{status:"close_or_operate"} run function glm:parser/parse/expression/close_or_operate
execute if data storage glm:parser {close:true} run return -1

execute unless data storage glm:parser current{value:" "} run function glm:parser/parse/expression/parse
execute if data storage glm:parser current{value:" "} run data modify storage glm:parser current.consumed set value true