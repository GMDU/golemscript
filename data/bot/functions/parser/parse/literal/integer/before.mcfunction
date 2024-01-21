data modify storage glm:parser current.consumed set value true
execute unless data storage glm:parser current{value:" "} run data modify storage glm:parser stack[-1].metadata.status set value "open"
execute if data storage glm:parser current{value:"-"} run function glm:parser/parse/literal/integer/invert