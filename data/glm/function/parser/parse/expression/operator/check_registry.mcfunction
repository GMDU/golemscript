data modify storage glm:helpers/registry target set from storage glm:parser stack[-1].metadata.registry
data modify storage glm:helpers/registry key set from storage glm:parser current.value

function glm:helpers/registry/init

execute if data storage glm:helpers/registry output.exact run data modify storage glm:parser stack[-1].metadata.operator set from storage glm:helpers/registry output.exact
execute if data storage glm:helpers/registry output.exact run data modify storage glm:parser current.consumed set value true

execute unless data storage glm:helpers/registry output.matches[] run data modify storage glm:parser stack[-1].metadata.no_matches set value true

data modify storage glm:parser stack[-1].metadata.registry set from storage glm:helpers/registry output.matches