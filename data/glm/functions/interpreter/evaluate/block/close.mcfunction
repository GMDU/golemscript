data modify storage moxlib:api/data/collect target set from storage glm:interpreter variables
execute store result storage moxlib:api/data/collect key.scope byte 1 run scoreboard players get $scope glm.interpreter

function moxlib:api/data/collect

data modify storage glm:interpreter variables set from storage moxlib:api/data/collect output.remain

scoreboard players remove $scope glm.interpreter 1