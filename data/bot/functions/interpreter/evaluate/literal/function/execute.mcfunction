data modify storage glm:interpreter evaluate.stack[-1].metadata.status set value "closed"
data modify storage glm:interpreter evaluate.next set value {type:"function"}
data modify storage glm:interpreter evaluate.next.args set from storage glm:interpreter evaluate.stack[-1].evaluated_args

function glm:interpreter/evaluate/literal/function/lookup/builtin
execute unless data storage glm:interpreter evaluate.next.variant run function glm:interpreter/evaluate/literal/function/lookup/proc
execute unless data storage glm:interpreter evaluate.next.variant run function glm:interpreter/evaluate/literal/function/lookup/custom
execute unless data storage glm:interpreter evaluate.next.variant run data modify storage glm:interpreter error set value '[{"text":"RuntimeError: Undefined function "},{"storage":"glm:interpreter","nbt":"evaluate.stack[-1].name","interpret":true}]'