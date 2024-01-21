data modify storage glm:interpreter evaluate.replace set value {type: "literal", variant: "function"}
data modify storage glm:interpreter evaluate.replace.name set from storage glm:interpreter evaluate.stack[-1].value.value.value
data modify storage glm:interpreter evaluate.replace.evaluated_args set from storage glm:interpreter evaluate.stack[-1].args

data modify storage glm:interpreter evaluate.replace.metadata.exclude append value "proc"
data modify storage glm:interpreter evaluate.replace.metadata.status set value "execute"