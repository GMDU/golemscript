data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute store result storage glm:api/interpreter/function execute.return.value int 1 run data get storage glm:interpreter evaluate.stack[-1].args[0].value
