execute store result score $index glm.interpreter run random value 0..2147483646
execute store result score $count glm.interpreter run data get storage glm:api/interpreter/function execute.args[0].value

scoreboard players operation $index glm.interpreter %= $count glm.interpreter

execute store result storage glm:interpreter temp.macro.index int 1 run scoreboard players get $index glm.interpreter

function glm:interpreter/evaluate/function/builtin/shuffle/macro with storage glm:interpreter temp.macro

execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/shuffle/iterate