# Lookup the data from the db
execute store result storage glm:runtime temp.id int 1 run scoreboard players get @s moxlib.api.player.id
function glm:runtime/get_data with storage glm:runtime temp

# Set the interpreter input from the data
data modify storage glm:api/interpreter init set from storage glm:runtime temp.data.state
# Call the GolemScript interpreter API with the retrieved data
function glm:api/interpreter/init
# Set the updated data from the interpreter back into the data
data modify storage glm:runtime temp.data.state set from storage glm:api/interpreter init.output

# If there is anything in stdout, print it
execute if data storage glm:api/interpreter stdio.out[] run function glm:runtime/run/out
# If there is anything in stderr, print it and clear the stack so the program stops
execute if data storage glm:api/interpreter stdio.error[] run data modify storage glm:runtime temp.data.state.stack set value []
execute if data storage glm:api/interpreter stdio.error[] run function glm:runtime/run/error

# Set the data back in the db
function glm:runtime/set_data with storage glm:runtime temp
# If the stack is empty, the program is finished, so remove the running tag
execute unless data storage glm:runtime temp.data.state.stack[] run tag @s remove glm.runtime.running
