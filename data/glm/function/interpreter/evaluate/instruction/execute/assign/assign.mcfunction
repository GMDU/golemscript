data modify storage glm:utils/data/get target set from storage glm:interpreter variables
data modify storage glm:utils/data/get key.name set from storage glm:interpreter evaluate.variable.name.value
execute store result storage glm:utils/data/get key.scope byte 1 run scoreboard players get $scope glm.interpreter

function glm:utils/data/get

execute if data storage glm:utils/data/get {success:true} run data modify storage glm:interpreter error set value [{"text":"RuntimeError: Cannot redeclare variable "},{"storage":"glm:utils/data/get","nbt":"output.name","interpret":true}]
execute if data storage glm:utils/data/get {success:true} run return -1

data modify storage glm:interpreter variables prepend value {}
data modify storage glm:interpreter variables[0].name set from storage glm:interpreter evaluate.variable.name.value
data modify storage glm:interpreter variables[0].value set from storage glm:interpreter evaluate.variable.value

data remove storage glm:interpreter evaluate.variable

execute store result storage glm:interpreter variables[0].scope byte 1 run scoreboard players get $scope glm.interpreter