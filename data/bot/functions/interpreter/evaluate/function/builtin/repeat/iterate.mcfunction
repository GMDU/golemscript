scoreboard players remove $count bot.interpreter 1

data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter evaluate.stack[-1].args[0].value[]

execute if score $count bot.interpreter matches 1.. run function glm:interpreter/evaluate/function/builtin/repeat/iterate
