execute unless score @s moxlib.api.player.id matches 1.. run function moxlib:api/player/run

data modify storage glm:runtime temp.pages set from entity @s SelectedItem.tag.pages
execute store result storage glm:runtime temp.id int 1 run scoreboard players get @s moxlib.api.player.id
function glm:runtime/get_data with storage glm:runtime temp

execute store result score $check glm.runtime run data modify storage glm:runtime temp.data.input set from storage glm:runtime temp.pages

execute unless score $check glm.runtime matches 0 run function glm:runtime/parse
execute if score $status glm.runtime matches 400.. run return -1

data remove storage glm:runtime temp.data.state
data modify storage glm:runtime temp.data.state.stack set value []
data modify storage glm:runtime temp.data.state.stack append from storage glm:runtime temp.data.parsed
tag @s add glm.runtime.running

function glm:runtime/set_data with storage glm:runtime temp

schedule function glm:runtime/run/init 1t replace
