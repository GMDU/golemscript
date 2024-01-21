execute if score $flat_depth glm.interpreter matches ..0 run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.metadata.current
execute if score $flat_depth glm.interpreter matches ..0 run return -1

data modify storage glm:api/interpreter/function execute.metadata.stack append value {depth: 0}
execute store result storage glm:api/interpreter/function execute.metadata.stack[-1].depth int 1 run scoreboard players remove $flat_depth glm.interpreter 1
data modify storage glm:api/interpreter/function execute.metadata.stack[-1].value set from storage glm:api/interpreter/function execute.metadata.current.value