execute store result score $value glm.interpreter run data get storage glm:interpreter evaluate.return_value.value
execute unless score $value glm.interpreter matches 0 run function glm:interpreter/evaluate/function/builtin/find/set_return
execute unless score $value glm.interpreter matches 0 run data remove storage glm:api/interpreter/function execute.metadata.open

data remove storage glm:api/interpreter/function execute.args[0].value[0]
