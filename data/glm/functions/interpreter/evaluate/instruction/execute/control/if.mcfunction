execute store result score $condition bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].evaluated_args[0].value
execute if data storage glm:interpreter evaluate.stack[-1].evaluated_args[0].value store result score $condition bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].evaluated_args[0].value
execute if score $condition bot.interpreter matches 0 run return -1

data modify storage glm:interpreter evaluate.replace set from storage glm:interpreter evaluate.stack[-1].evaluated_args[1]