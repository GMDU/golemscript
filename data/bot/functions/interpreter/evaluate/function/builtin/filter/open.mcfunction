execute store result score $value bot.interpreter run data get storage glm:interpreter evaluate.return_value.value
execute unless score $value bot.interpreter matches 0 run data modify storage glm:interpreter evaluate.stack[-1].metadata.return.value append from storage glm:interpreter evaluate.stack[-1].args[0].value[0]

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]
