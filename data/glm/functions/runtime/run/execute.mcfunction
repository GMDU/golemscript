execute store result storage glm:runtime temp.id int 1 run scoreboard players get @s moxlib.api.player.id
function glm:runtime/get_data with storage glm:runtime temp

data modify storage glm:api/interpreter init set from storage glm:runtime temp.data.state
function glm:api/interpreter/init
data modify storage glm:runtime temp.data.state set from storage glm:api/interpreter init.output

execute if data storage glm:api/interpreter stdio.out[] run function glm:runtime/run/out
execute if data storage glm:api/interpreter stdio.error[] run data modify storage glm:runtime temp.data.state.stack set value []
execute if data storage glm:api/interpreter stdio.error[] run function glm:runtime/run/error

function glm:runtime/set_data with storage glm:runtime temp
execute unless data storage glm:runtime temp.data.state.stack[] run tag @s remove glm.runtime.running
