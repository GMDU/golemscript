execute store result score $value glm.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[0].value
execute if score $value glm.interpreter matches ..-1 run data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: -1}
execute if score $value glm.interpreter matches 0 run data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 0}
execute if score $value glm.interpreter matches 1.. run data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "integer", value: 1}
