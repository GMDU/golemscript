# Set the input and run the parse function
data modify storage glm:api/parser init.target set from storage glm:runtime temp.data.input
execute store result score $status glm.runtime run function glm:api/parser/init
# Set the parsed field on data to the output, so we can save it use it if the input is the same
data modify storage glm:runtime temp.data.parsed set from storage glm:api/parser init.output
# If there was an error, print it to the user, with interpret: true because it's a JSON string
execute if score $status glm.runtime matches 400.. run tellraw @s {"storage":"glm:api/parser","nbt":"init.error","color":"red","interpret":true}
