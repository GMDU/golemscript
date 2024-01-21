execute if score $flat_depth bot.interpreter matches ..0 run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter evaluate.stack[-1].metadata.current
execute if score $flat_depth bot.interpreter matches ..0 run return -1

data modify storage glm:interpreter evaluate.stack[-1].metadata.stack append value {depth: 0}
execute store result storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].depth int 1 run scoreboard players remove $flat_depth bot.interpreter 1
data modify storage glm:interpreter evaluate.stack[-1].metadata.stack[-1].value set from storage glm:interpreter evaluate.stack[-1].metadata.current.value