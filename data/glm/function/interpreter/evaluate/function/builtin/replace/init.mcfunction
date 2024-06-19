data remove storage glm:interpreter temp.replace
data modify storage glm:api/interpreter/function execute.return set value {type: "literal", variant: "string", value: []}
data modify storage glm:interpreter temp.replace.match set from storage glm:api/interpreter/function execute.args[1].value
execute store result score $replace_count glm.interpreter run data get storage glm:api/interpreter/function execute.args[3].value
execute unless data storage glm:api/interpreter/function execute.args[3] run scoreboard players set $replace_count glm.interpreter -1

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/replace/iterate

data modify storage glm:api/interpreter/function execute.return.value[-1].value append from storage glm:interpreter temp.replace.checking[]
