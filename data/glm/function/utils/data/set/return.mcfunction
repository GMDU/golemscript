execute store success storage glm:utils/data/set success byte 1 run data modify storage glm:utils/data/set temp.current merge from storage glm:utils/data/set data
data modify storage glm:utils/data/set output append from storage glm:utils/data/set temp.current
data modify storage glm:utils/data/set output append from storage glm:utils/data/set target[]