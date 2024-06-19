data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.args[2].value[0]
data modify storage glm:api/interpreter/function execute.args[2].value append from storage glm:api/interpreter/function execute.args[2].value[0]
data remove storage glm:api/interpreter/function execute.args[2].value[0]
scoreboard players add $length glm.interpreter 1

execute if score $length glm.interpreter < $target_length glm.interpreter run function glm:interpreter/evaluate/function/builtin/rpad/iterate
