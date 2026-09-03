data modify storage glm:utils/data/compare output set value true
data modify storage glm:utils/data/compare success set value false

execute store success storage glm:utils/data/compare temp.result byte 1 run data modify storage glm:utils/data/compare target merge from storage glm:utils/data/compare key

execute if data storage glm:utils/data/compare temp.result run data modify storage glm:utils/data/compare success set value true
execute if data storage glm:utils/data/compare temp{result:true} run data modify storage glm:utils/data/compare output set value false