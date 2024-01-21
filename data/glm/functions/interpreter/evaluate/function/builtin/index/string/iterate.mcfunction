data modify storage glm:interpreter temp.index.current set from storage glm:interpreter evaluate.stack[-1].args[0].value[0]
data modify storage glm:interpreter temp.index.checking append from storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute store result score $check glm.interpreter run data modify storage glm:interpreter temp.index.current set from storage glm:interpreter temp.index.match[0]

data remove storage glm:interpreter temp.index.match[0]
data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]

execute if score $check glm.interpreter matches 1 run function glm:interpreter/evaluate/function/builtin/index/string/fail

execute unless data storage glm:interpreter temp.index.match[] store result storage glm:api/interpreter/function execute.return.value int 1 run scoreboard players get $index glm.interpreter
execute unless data storage glm:interpreter temp.index.match[] run return -1

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/index/string/iterate
