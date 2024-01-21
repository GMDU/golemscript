execute unless data storage glm:interpreter evaluate.stack[-1].args[0].value[] run return -1

data modify storage glm:interpreter temp.expected set from storage glm:interpreter evaluate.stack[-1].args[1].value[0]
data modify storage glm:interpreter temp.actual set from storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check bot.interpreter run data modify storage glm:interpreter temp.actual set from storage glm:interpreter temp.expected

execute unless score $check bot.interpreter matches 0 run return -1

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]
data remove storage glm:interpreter evaluate.stack[-1].args[1].value[0]

execute if data storage glm:interpreter evaluate.stack[-1].args[1].value[] run function glm:interpreter/evaluate/function/builtin/prefix/iterate
