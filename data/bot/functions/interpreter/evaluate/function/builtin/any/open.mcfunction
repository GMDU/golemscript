execute store result score $value bot.interpreter run data get storage bot:interpreter evaluate.return_value.value
execute unless score $value bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.stack[-1].metadata.return.value set value true
execute unless score $value bot.interpreter matches 0 run data remove storage bot:interpreter evaluate.stack[-1].args[0].value
