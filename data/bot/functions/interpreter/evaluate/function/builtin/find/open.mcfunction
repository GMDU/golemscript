execute store result score $value bot.interpreter run data get storage bot:interpreter evaluate.return_value.value
execute unless score $value bot.interpreter matches 0 run function bot:interpreter/evaluate/function/builtin/find/set_return
execute unless score $value bot.interpreter matches 0 run data remove storage bot:interpreter evaluate.stack[-1].metadata.open

data remove storage bot:interpreter evaluate.stack[-1].args[0].value[0]
