data modify storage glm:helpers/registry key set from storage glm:parser current.value
function glm:helpers/registry/init

execute if data storage glm:helpers/registry output.exact run data modify storage glm:parser stack[-1].instruction set from storage glm:helpers/registry output.exact

execute unless data storage glm:helpers/registry output.matches[] run data modify storage glm:parser stack[-1].metadata.no_matches set value true

execute unless data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser stack[-1].value append from storage glm:parser current.value

data modify storage glm:parser current.consumed set value true