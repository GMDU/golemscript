execute store result score $length bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[0].value
execute store result score $target_length bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[1].value
execute unless data storage glm:interpreter evaluate.stack[-1].args[2] run data modify storage glm:interpreter evaluate.stack[-1].args append value {type: "literal", variant: "string", value: [" "]}
data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].args[0]

execute if score $length bot.interpreter < $target_length bot.interpreter run function glm:interpreter/evaluate/function/builtin/rpad/iterate
