function glm:interpreter/evaluate/instruction/execute/keyword/break/iterate

execute unless data storage glm:interpreter evaluate.stack[] run data modify storage glm:interpreter error set value '{"text":"RuntimeError: Cannot use break outside of a loop"}'
execute unless data storage glm:interpreter evaluate.stack[] run return -1
execute if data storage glm:interpreter temp.instruction{type:"fuction"} run data modify storage glm:interpreter error set value '{"text":"RuntimeError: Cannot use break outside of a loop"}'
execute if data storage glm:interpreter temp.instruction{type:"fuction"} run return -1
