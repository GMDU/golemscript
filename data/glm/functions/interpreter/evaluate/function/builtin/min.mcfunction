execute store result score $a bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[0].value
execute store result score $b bot.interpreter run data get storage glm:interpreter evaluate.stack[-1].args[1].value

execute if score $a bot.interpreter < $b bot.interpreter run data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].args[0]
execute unless score $a bot.interpreter < $b bot.interpreter run data modify storage glm:api/interpreter/function execute.return set from storage glm:interpreter evaluate.stack[-1].args[1]
