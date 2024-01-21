data modify storage glm:interpreter helpers.search_inventory.array append string storage glm:interpreter helpers.search_inventory.current_id 0 1
data modify storage glm:interpreter helpers.search_inventory.current_id set string storage glm:interpreter helpers.search_inventory.current_id 1

execute store result score $size bot.interpreter run data get storage glm:interpreter helpers.search_inventory.current_id
execute if score $size bot.interpreter matches 1.. run function glm:interpreter/evaluate/function/helpers/search_inventory/to_array