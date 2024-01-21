data remove storage glm:interpreter temp.replace
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage glm:interpreter temp.replace.match set from storage glm:interpreter evaluate.stack[-1].args[1].value
execute store result score $replace_count bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[3].value
execute unless data storage glm:interpreter evaluate.stack[-1].args[3] run scoreboard players set $replace_count bot.interpreter -1

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/replace/iterate

data modify storage glm:api/interpreter/function execute.return.value[-1].value append from storage glm:interpreter temp.replace.checking[]
