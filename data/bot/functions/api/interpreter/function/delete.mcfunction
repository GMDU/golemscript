function glm:private/interpreter/function/delete with storage glm:api/interpreter/function delete
data remove storage glm:api/interpreter/function delete

execute if score $success bot.private matches 0 run data modify storage glm:api/interpreter/function delete.error set value "[API] Could not find function to remove."
execute if score $success bot.private matches 0 run return 404

return 200
