function glm:interpreter/evaluate/instruction/execute/keyword/next/iterate

execute unless data storage glm:interpreter evaluate.stack[] run data modify storage glm:interpreter error set value '{"text":"RuntimeError: Cannot use next outside of a loop"}'
execute unless data storage glm:interpreter evaluate.stack[] run return -1
execute if data storage glm:interpreter temp.instruction{type:"function"} run data modify storage glm:interpreter error set value '{"text":"RuntimeError: Cannot use next outside of a loop"}'
execute if data storage glm:interpreter temp.instruction{type:"function"} run return -1

data modify storage glm:interpreter evaluate.loop set value true
