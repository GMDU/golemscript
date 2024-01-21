data modify storage glm:interpreter evaluate.next.args append value {type: "literal", variant: "string", value: []}
data modify storage glm:interpreter evaluate.next.args[-1].value set from storage glm:interpreter evaluate.stack[-1].args[0].value[0].key
data modify storage glm:interpreter evaluate.next.args append from storage glm:interpreter evaluate.stack[-1].args[0].value[0].value
