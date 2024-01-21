scoreboard players operation $target moxlib.api.math.power = .a glm.interpreter
scoreboard players operation $power moxlib.api.math.power = .b glm.interpreter

function moxlib:api/math/power

data modify storage glm:interpreter evaluate.operation.result set value {type: "literal", variant: "integer", value: 0}
execute store result storage glm:interpreter evaluate.operation.result.value int 1 run scoreboard players get $output moxlib.api.math.power
