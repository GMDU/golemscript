data modify storage glm:interpreter temp.split.current set from storage glm:api/interpreter/function execute.args[0].value[0]
data modify storage glm:interpreter temp.split.checking append from storage glm:api/interpreter/function execute.args[0].value[0]

execute store result score $check glm.interpreter run data modify storage glm:interpreter temp.split.current set from storage glm:interpreter temp.split.separator[0]

data remove storage glm:interpreter temp.split.separator[0]
data remove storage glm:api/interpreter/function execute.args[0].value[0]

execute if score $check glm.interpreter matches 1 run function glm:interpreter/evaluate/function/builtin/split/fail
execute unless data storage glm:interpreter temp.split.separator[] run function glm:interpreter/evaluate/function/builtin/split/success

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/split/iterate
