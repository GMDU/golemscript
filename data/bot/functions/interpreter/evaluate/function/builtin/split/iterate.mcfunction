data modify storage glm:interpreter temp.split.current set from storage glm:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage glm:interpreter temp.split.checking append from storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check bot.interpreter run data modify storage glm:interpreter temp.split.current set from storage glm:interpreter temp.split.separator[0]

data remove storage glm:interpreter temp.split.separator[0]
data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute if score $check bot.interpreter matches 1 run function glm:interpreter/evaluate/function/builtin/split/fail
execute unless data storage glm:interpreter temp.split.separator[] run function glm:interpreter/evaluate/function/builtin/split/success

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/split/iterate
