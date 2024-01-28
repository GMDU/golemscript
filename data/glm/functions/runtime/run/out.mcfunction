# Print the string, with interpreter: true because it's a character array
tellraw @s {"storage":"glm:api/interpreter","nbt":"stdio.out[0].value","interpret": true}
# Remove the first thing in output and continue iterating if there's more
data remove storage glm:api/interpreter stdio.out[0]
execute if data storage glm:api/interpreter stdio.out[] run function glm:runtime/run/out
