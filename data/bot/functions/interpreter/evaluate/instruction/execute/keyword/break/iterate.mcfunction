data remove storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter temp.instruction set from storage glm:interpreter evaluate.stack[-1]

execute if data storage glm:interpreter temp.instruction{type:"block"} run function glm:interpreter/evaluate/block/close
execute if data storage glm:interpreter temp.instruction{tags:["loop"]} run return -1
execute if data storage glm:interpreter temp.instruction{type:"function"} run return -1

execute if data storage glm:interpreter evaluate.stack[] run function glm:interpreter/evaluate/instruction/execute/keyword/break/iterate