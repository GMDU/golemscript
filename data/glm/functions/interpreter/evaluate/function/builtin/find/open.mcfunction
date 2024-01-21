execute store result score $value glm.interpreter run data get storage glm:interpreter evaluate.return_value.value
execute unless score $value glm.interpreter matches 0 run function glm:interpreter/evaluate/function/builtin/find/set_return
execute unless score $value glm.interpreter matches 0 run data remove storage glm:interpreter evaluate.stack[-1].metadata.open

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]
