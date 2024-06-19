execute store result score $a glm.interpreter run data get storage glm:api/interpreter/function execute.args[0].value
execute store result score $b glm.interpreter run data get storage glm:api/interpreter/function execute.args[1].value

execute if score $a glm.interpreter < $b glm.interpreter run data modify storage glm:api/interpreter/function execute.return set from storage glm:api/interpreter/function execute.args[0]
execute unless score $a glm.interpreter < $b glm.interpreter run data modify storage glm:api/interpreter/function execute.return set from storage glm:api/interpreter/function execute.args[1]
