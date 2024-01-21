data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute store result score $value bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[0].value
execute if score $value bot.interpreter matches ..-1 store result storage glm:api/interpreter/function execute.return.value int -1 run scoreboard players get $value bot.interpreter
execute unless score $value bot.interpreter matches ..-1 store result storage glm:api/interpreter/function execute.return.value int 1 run scoreboard players get $value bot.interpreter
