data modify storage glm:helpers/registry compare set value true

execute store success storage glm:helpers/registry compare byte 1 run data modify storage glm:helpers/registry target[0].filter[0] set from storage glm:helpers/registry key

execute if data storage glm:helpers/registry {compare:false} run function glm:helpers/registry/match

data remove storage glm:helpers/registry target[0]
execute if data storage glm:helpers/registry target[] run function glm:helpers/registry/iterate