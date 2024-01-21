execute unless data storage glm:api/interpreter init.stack[] run data modify storage glm:api/interpreter init.error set value "[API] Expected a list as a stack."
execute unless data storage glm:api/interpreter init.stack[] run return 400

data modify storage glm:interpreter evaluate.stack set from storage glm:api/interpreter init.stack
function glm:interpreter/init

data remove storage glm:api/interpreter init
data modify storage glm:api/interpreter init.output set from storage glm:interpreter evaluate.stack

return 200
