execute if score $replace_count bot.interpreter matches 0 run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter evaluate.stack[-1].args[0].value[]
execute if score $replace_count bot.interpreter matches 0 run return -1

data modify storage glm:interpreter temp.replace.current set from storage glm:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage glm:interpreter temp.replace.checking append from storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check bot.interpreter run data modify storage glm:interpreter temp.replace.current set from storage glm:interpreter temp.replace.match[0]

data remove storage glm:interpreter temp.replace.match[0]
data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute if score $check bot.interpreter matches 1 run function glm:interpreter/evaluate/function/builtin/replace/fail
execute unless data storage glm:interpreter temp.replace.match[] run function glm:interpreter/evaluate/function/builtin/replace/success

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/replace/iterate
