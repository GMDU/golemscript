data modify storage glm:utils/data/get target set from storage glm:interpreter variables
data modify storage glm:utils/data/get key.name set from storage glm:interpreter evaluate.assign.name

function glm:utils/data/get

execute if data storage glm:utils/data/get output{constant:true} run data modify storage glm:interpreter error set value '[{"text":"RuntimeError: Cannot reassign constant "},{"storage":"glm:utils/data/get","nbt":"output.name","interpret":true}]'
execute if data storage glm:utils/data/get output{constant:true} run return -1

data modify storage moxlib:api/data/set target set from storage glm:interpreter variables
data modify storage moxlib:api/data/set key.name set from storage glm:interpreter evaluate.assign.name
execute if data storage glm:utils/data/get {success:false} store result storage moxlib:api/data/set data.scope byte 1 run scoreboard players get $scope glm.interpreter
execute if data storage glm:utils/data/get {success:true} run data modify storage moxlib:api/data/set data.scope set from storage glm:utils/data/get output.scope
data modify storage moxlib:api/data/set data.value set from storage glm:interpreter evaluate.assign.value

function moxlib:api/data/set

data modify storage glm:interpreter variables set from storage moxlib:api/data/set output