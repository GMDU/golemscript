execute store result score $value glm.interpreter run data get storage glm:interpreter evaluate.return_value.value
execute unless score $value glm.interpreter matches 0 run data modify storage glm:api/interpreter/function execute.metadata.return.value append from storage glm:api/interpreter/function execute.args[0].value[0]

data remove storage glm:api/interpreter/function execute.args[0].value[0]
