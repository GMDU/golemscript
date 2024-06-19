data modify storage glm:interpreter temp.variant set from storage glm:api/interpreter/function execute.args[0].variant

execute if data storage glm:interpreter temp{variant:"integer"} run data modify storage glm:api/interpreter/function execute.return set from storage glm:api/interpreter/function execute.args[0]
execute if data storage glm:interpreter temp{variant:"integer"} run return -1

execute if data storage glm:interpreter temp{variant:"string"} run function glm:interpreter/evaluate/function/builtin/int/string
execute if data storage glm:interpreter temp{variant:"string"} run return -1

data modify storage glm:interpreter error set value '[{"text":"RuntimeError: Cannot convert type "},{"storage":"glm:interpreter","nbt":"temp.variant"},{"text":" to integer"}]'
