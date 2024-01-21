execute unless data storage bot:api/interpreter init.stack[] run data modify storage bot:api/interpreter init.error set value "[API] Expected a list as a stack."
execute unless data storage bot:api/interpreter init.stack[] run return 400

data modify storage bot:interpreter evaluate.stack set from storage bot:api/interpreter init.stack
function bot:interpreter/init

data remove storage bot:api/interpreter init
data modify storage bot:api/interpreter init.output set from storage bot:interpreter evaluate.stack

return 200
