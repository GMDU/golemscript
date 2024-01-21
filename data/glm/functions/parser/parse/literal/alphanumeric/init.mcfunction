execute unless data storage glm:parser stack[-1].value[] unless data storage glm:parser current{value:" "} run function glm:parser/parse/literal/alphanumeric/before
execute unless data storage glm:parser stack[-1].value[] if data storage glm:parser current{value:" "} run data modify storage glm:parser current.consumed set value true

execute if data storage glm:parser stack[-1].value[] unless data storage glm:parser current{consumed:true} run function glm:parser/parse/literal/alphanumeric/open/init