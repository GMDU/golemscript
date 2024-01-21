execute store result score $slice_start glm.interpreter run data get storage glm:api/interpreter/function execute.args[1].value
execute store result score $slice_end glm.interpreter run data get storage glm:api/interpreter/function execute.args[2].value

execute store result storage moxlib:api/data/array/slice end int 1 run scoreboard players operation $slice_end glm.interpreter += $slice_start glm.interpreter