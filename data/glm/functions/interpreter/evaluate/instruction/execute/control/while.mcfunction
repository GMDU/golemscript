execute store result score $condition glm.interpreter run data get storage glm:interpreter evaluate.stack[-1].evaluated_args[0].value
execute if data storage glm:interpreter evaluate.stack[-1].evaluated_args[0].value store result score $condition glm.interpreter run data get storage glm:interpreter evaluate.stack[-1].evaluated_args[0].value
execute if score $condition glm.interpreter matches 0 run return -1

data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].evaluated_args[1]
data remove storage glm:interpreter evaluate.stack[-1].metadata.status