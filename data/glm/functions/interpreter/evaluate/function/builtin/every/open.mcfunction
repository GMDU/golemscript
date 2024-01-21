execute store result score $value glm.interpreter run data get storage glm:interpreter evaluate.return_value.value
execute if score $value glm.interpreter matches 0 run data modify storage glm:api/interpreter/function execute.metadata.return.value set value false
execute if score $value glm.interpreter matches 0 run data remove storage glm:api/interpreter/function execute.args[0].value
