data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.stack[-1].value.value
data modify storage glm:interpreter evaluate.return_value set value {type:"undefined",value: false}
data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "closed"

execute if data storage glm:interpreter evaluate.stack[-1].args[] run function glm:interpreter/evaluate/function/proc/set_args/init