data modify storage glm:utils ascii.target.value set from storage glm:api/interpreter/function execute.args[0].value[0]

function glm:interpreter/utils/ascii/lookup
execute store result score $char glm.interpreter run data get storage glm:utils ascii.output.id

execute unless score $char glm.interpreter matches 65..90 run data modify storage glm:api/interpreter/function execute.return.value append from storage glm:api/interpreter/function execute.args[0].value[0]
execute unless score $char glm.interpreter matches 65..90 run return -1

execute store result storage glm:utils ascii.target.id int 1 run scoreboard players add $char glm.interpreter 32
function glm:interpreter/utils/ascii/lookup
data modify storage glm:api/interpreter/function execute.return.value append from storage glm:utils ascii.output.value