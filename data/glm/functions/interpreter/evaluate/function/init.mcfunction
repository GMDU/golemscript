execute if data storage glm:interpreter evaluate.current.metadata{status:"closed"} run return -1

data modify storage glm:interpreter evaluate.break set value true
execute if data storage glm:interpreter evaluate.current{variant:"builtin"} run function glm:interpreter/evaluate/function/builtin/init
execute if data storage glm:interpreter evaluate.current{variant:"proc"} run function glm:interpreter/evaluate/function/proc/init
execute if data storage glm:interpreter evaluate.current{variant:"custom"} run function glm:interpreter/evaluate/function/custom/init