execute unless data storage glm:api/interpreter init.stack[] run data modify storage glm:api/interpreter init.error set value "[API] Expected a list as a stack."
execute unless data storage glm:api/interpreter init.stack[] run return 400

data modify storage glm:interpreter evaluate.stack set from storage glm:api/interpreter init.stack
data modify storage glm:interpreter variables set from storage glm:api/interpreter init.variables
data modify storage glm:interpreter registry.custom set from storage glm:api/interpreter init.functions
execute store result score $scope glm.interpreter run data get storage glm:api/interpreter init.scope
function glm:interpreter/init

data remove storage glm:api/interpreter init
data modify storage glm:api/interpreter init.output.stack set from storage glm:interpreter evaluate.stack
data modify storage glm:api/interpreter init.output.variables set from storage glm:interpreter variables
data modify storage glm:api/interpreter init.output.functions set from storage glm:interpreter registry.custom
execute store result storage glm:api/interpreter init.output.scope int 1 run scoreboard players get $scope glm.interpreter

return 200
