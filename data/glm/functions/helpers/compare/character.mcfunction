data remove storage glm:helpers/compare modify
execute store success storage glm:helpers/compare modify byte 1 run data modify storage glm:helpers/compare target set from storage glm:helpers/compare source

execute if data storage glm:helpers/compare {modify:true} run data modify storage glm:helpers/compare output set value false
execute if data storage glm:helpers/compare {modify:false} run data modify storage glm:helpers/compare output set value true