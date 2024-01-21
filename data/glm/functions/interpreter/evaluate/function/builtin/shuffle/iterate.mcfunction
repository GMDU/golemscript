execute store result score $index bot.interpreter run random value 0..2147483646
execute store result score $count bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[0].value

scoreboard players operation $index bot.interpreter %= $count bot.interpreter

execute store result storage glm:interpreter temp.macro.index int 1 run scoreboard players get $index bot.interpreter

function glm:interpreter/evaluate/function/builtin/shuffle/macro with storage glm:interpreter temp.macro

execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/shuffle/iterate