data modify storage bot:interpreter evaluate.next set from storage bot:interpreter evaluate.stack[-1].value.value
data modify storage bot:interpreter evaluate.return_value set value {type:"undefined",value: false}
data modify storage bot:interpreter evaluate.stack[-1].metadata.status set value "closed"

execute if data storage bot:interpreter evaluate.stack[-1].args[] run function bot:interpreter/evaluate/function/custom/set_args/init
