# Print the message, with interpreter: true because it's a JSON string
tellraw @s {"storage":"glm:api/interpreter","nbt":"stdio.error[0].value","color": "red","interpret":true}
# Remove the first error and continue iterating if there are any more
data remove storage glm:api/interpreter stdio.error[0]
execute if data storage glm:api/interpreter stdio.error[] run function glm:runtime/run/error
