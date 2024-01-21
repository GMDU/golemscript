data modify storage glm:interpreter helpers.search_inventory.current set from storage glm:interpreter helpers.search_inventory.inventory[0]
data modify storage glm:interpreter helpers.search_inventory.current_id set from storage glm:interpreter helpers.search_inventory.inventory[0].id
data remove storage glm:interpreter helpers.search_inventory.inventory[0]

data modify storage glm:interpreter helpers.search_inventory.output.id set from storage glm:interpreter helpers.search_inventory.current_id

data modify storage glm:interpreter helpers.search_inventory.array set value []

function glm:interpreter/evaluate/function/helpers/search_inventory/to_array

execute store result score $check bot.interpreter run data modify storage glm:interpreter helpers.search_inventory.array set from storage glm:interpreter helpers.search_inventory.target

execute if score $check bot.interpreter matches 0 run data modify storage glm:interpreter helpers.search_inventory.output set from storage glm:interpreter helpers.search_inventory.current
execute if score $check bot.interpreter matches 0 store result storage glm:interpreter helpers.search_inventory.output.slot byte 1 run scoreboard players get $slot bot.interpreter
execute if score $check bot.interpreter matches 0 run return -1

execute unless data storage glm:interpreter helpers.search_inventory.inventory[] run return -1

scoreboard players add $slot bot.interpreter 1
function glm:interpreter/evaluate/function/helpers/search_inventory/iterate
