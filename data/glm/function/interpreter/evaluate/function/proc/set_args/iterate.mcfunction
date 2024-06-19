data modify storage glm:interpreter evaluate.variable.name.value set from storage glm:interpreter temp.parameters[0]
data modify storage glm:interpreter evaluate.variable.value set from storage glm:interpreter evaluate.stack[-1].args[0]

function glm:interpreter/evaluate/instruction/execute/assign/assign

data remove storage glm:interpreter temp.parameters[0]
data remove storage glm:interpreter evaluate.stack[-1].args[0]

execute if data storage glm:interpreter evaluate.stack[-1].args[] run function glm:interpreter/evaluate/function/proc/set_args/iterate
