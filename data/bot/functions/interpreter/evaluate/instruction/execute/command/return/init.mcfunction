execute unless data storage glm:interpreter evaluate.stack[-1].args[{variant:"undefined"}] run data modify storage glm:interpreter evaluate.return_value set from storage glm:interpreter evaluate.stack[-1].evaluated_args[0]

function glm:interpreter/evaluate/instruction/execute/command/return/iterate

execute unless data storage glm:interpreter evaluate.stack[] run data modify storage glm:interpreter error set value '{"text":"RuntimeError: Cannot use return outside of a function"}'
execute unless data storage glm:interpreter evaluate.stack[] run return -1

data remove storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter evaluate.loop set value true
