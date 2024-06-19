data modify storage moxlib:api/string/filter target set from storage glm:api/interpreter/function execute.args[1].value
data modify storage moxlib:api/string/filter key set from storage glm:api/interpreter/function execute.args[0].value[0]
function glm:utils/filter.macro with storage moxlib:api/string/filter

execute if data storage moxlib:api/string/filter {output: true} run scoreboard players set $check glm.interpreter 1