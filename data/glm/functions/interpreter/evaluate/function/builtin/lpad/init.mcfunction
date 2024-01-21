execute store result score $length glm.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[0].value
execute store result score $target_length glm.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[1].value
execute unless data storage glm:interpreter evaluate.stack[-1].args[2] run data modify storage glm:interpreter evaluate.stack[-1].args append value {type: "literal", variant: "string", value: [" "]}
data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].args[0]

execute if score $length glm.interpreter < $target_length glm.interpreter run function glm:interpreter/evaluate/function/builtin/lpad/iterate
