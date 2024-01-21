data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
execute store result score $count glm.interpreter run data get storage glm:api/interpreter/function execute.args[1].value

execute if score $count glm.interpreter matches 1.. run function glm:interpreter/evaluate/function/builtin/repeat/iterate
