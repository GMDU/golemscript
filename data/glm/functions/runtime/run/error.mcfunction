tellraw @s {"storage":"glm:api/interpreter","nbt":"stdio.error[0].value","color": "red"}
data remove storage glm:api/interpreter stdio.error[0]
execute if data storage glm:api/interpreter stdio.error[] run function glm:runtime/run/error
