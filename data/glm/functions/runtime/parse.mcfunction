data modify storage glm:api/parser init.target set from storage glm:runtime temp.data.input
execute store result score $status glm.runtime run function glm:api/parser/init
data modify storage glm:runtime temp.data.parsed set from storage glm:api/parser init.output
execute if score $status glm.runtime matches 400.. run tellraw @s {"storage":"glm:api/parser","nbt":"init.error","color":"red","interpret":true}
