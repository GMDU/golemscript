execute store result score $length glm.interpreter run data get storage glm:api/interpreter/function execute.args[0].value
execute store result score $target_length glm.interpreter run data get storage glm:api/interpreter/function execute.args[1].value
execute unless data storage glm:api/interpreter/function execute.args[2] run data modify storage glm:api/interpreter/function execute.args append value {type: "literal", variant: "string", value: [" "]}
data modify storage glm:api/interpreter/function execute.return set from storage glm:api/interpreter/function execute.args[0]

execute if score $length glm.interpreter < $target_length glm.interpreter run function glm:interpreter/evaluate/function/builtin/rpad/iterate
