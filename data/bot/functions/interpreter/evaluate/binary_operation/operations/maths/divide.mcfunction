data modify storage bot:interpreter evaluate.operation.result set value {type: "literal", variant: "integer", value: 0}
execute store result storage bot:interpreter evaluate.operation.result.value int 1 run scoreboard players operation .a bot.interpreter /= .b bot.interpreter