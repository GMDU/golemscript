data modify storage glm:interpreter temp.split.separator set from storage glm:api/interpreter/function execute.args[1].value
data modify storage glm:interpreter temp.split.checking set value []
data modify storage glm:api/interpreter/function execute.return.value append value {type: "literal", variant: "string", value: []}
