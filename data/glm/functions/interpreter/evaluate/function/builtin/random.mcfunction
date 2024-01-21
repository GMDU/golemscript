# random (min, max) = RANDOM_NUMBER % (max - min + 1) + min

execute store result score .min glm.interpreter run data get storage glm:api/interpreter/function execute.args[0].value
execute store result score .max glm.interpreter run data get storage glm:api/interpreter/function execute.args[1].value

function moxlib:api/math/random

# max - min + 1
scoreboard players set .mod glm.interpreter 1
scoreboard players operation .mod glm.interpreter += .max glm.interpreter
scoreboard players operation .mod glm.interpreter -= .min glm.interpreter

scoreboard players operation .result glm.interpreter = $rng moxlib.api.math.random
scoreboard players operation .result glm.interpreter %= .mod glm.interpreter
scoreboard players operation .result glm.interpreter += .min glm.interpreter

data modify storage glm:api/interpreter/function execute.return set value {type:"literal", variant: "integer", value: 0}
execute store result storage glm:api/interpreter/function execute.return.value int 1 run scoreboard players get .result glm.interpreter