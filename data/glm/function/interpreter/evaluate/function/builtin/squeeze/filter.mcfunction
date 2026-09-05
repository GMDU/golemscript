data modify storage glm:utils/string/filter target set from storage glm:api/interpreter/function execute.args[1].value
data modify storage glm:utils/string/filter key set from storage glm:api/interpreter/function execute.args[0].value[0]
function glm:utils/string/filter

execute if data storage glm:utils/string/filter {output: true} run scoreboard players set $check glm.interpreter 1