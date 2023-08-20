execute unless data storage bot:interpreter evaluate.stack[-1].evaluated_value[] run return -1

execute if score .index bot.interpreter matches 0 run data modify storage bot:interpreter evaluate.parameters.result set from storage bot:interpreter evaluate.stack[-1].evaluated_value[0]
execute if score .index bot.interpreter matches 0 run return -1

execute if score .index bot.interpreter matches -1 run data modify storage bot:interpreter evaluate.parameters.result set from storage bot:interpreter evaluate.stack[-1].evaluated_value[-1]
execute if score .index bot.interpreter matches -1 run return -1

execute if score .index bot.interpreter matches 1.. run data remove storage bot:interpreter evaluate.stack[-1].evaluated_value[0]
execute if score .index bot.interpreter matches 1.. run scoreboard players remove .index bot.interpreter 1

execute if score .index bot.interpreter matches ..-2 run data remove storage bot:interpreter evaluate.stack[-1].evaluated_value[-1]
execute if score .index bot.interpreter matches ..-2 run scoreboard players add .index bot.interpreter 1

function bot:interpreter/evaluate/literal/array/parameters/iterate