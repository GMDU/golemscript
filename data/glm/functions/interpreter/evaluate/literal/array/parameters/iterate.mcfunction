execute unless data storage glm:interpreter evaluate.stack[-1].value[] run return -1

execute if score .index glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.parameters.result set from storage glm:interpreter evaluate.stack[-1].value[0]
execute if score .index glm.interpreter matches 0 run return -1

execute if score .index glm.interpreter matches -1 run data modify storage glm:interpreter evaluate.parameters.result set from storage glm:interpreter evaluate.stack[-1].value[-1]
execute if score .index glm.interpreter matches -1 run return -1

execute if score .index glm.interpreter matches 1.. run data remove storage glm:interpreter evaluate.stack[-1].value[0]
execute if score .index glm.interpreter matches 1.. run scoreboard players remove .index glm.interpreter 1

execute if score .index glm.interpreter matches ..-2 run data remove storage glm:interpreter evaluate.stack[-1].value[-1]
execute if score .index glm.interpreter matches ..-2 run scoreboard players add .index glm.interpreter 1

function glm:interpreter/evaluate/literal/array/parameters/iterate