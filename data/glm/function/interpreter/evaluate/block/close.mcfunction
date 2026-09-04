data modify storage glm:utils/data/collect target set from storage glm:interpreter variables
execute store result storage glm:utils/data/collect key.scope byte 1 run scoreboard players get $scope glm.interpreter

function glm:utils/data/collect

data modify storage glm:interpreter variables set from storage glm:utils/data/collect output.remain

scoreboard players remove $scope glm.interpreter 1