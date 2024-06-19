scoreboard players remove $count glm.interpreter 1

data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.args[0].value[]

execute if score $count glm.interpreter matches 1.. run function glm:interpreter/evaluate/function/builtin/repeat/iterate
