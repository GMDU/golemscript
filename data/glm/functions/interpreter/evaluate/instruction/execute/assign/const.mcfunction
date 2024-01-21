data modify storage glm:interpreter evaluate.variable.name set from storage glm:interpreter evaluate.stack[-1].evaluated_args[0]
data modify storage glm:interpreter evaluate.variable.value set from storage glm:interpreter evaluate.stack[-1].evaluated_args[1]
execute store result score $return bot.interpreter run function glm:interpreter/evaluate/instruction/execute/assign/assign
execute unless score $return bot.interpreter matches -1 run data modify storage glm:interpreter variables[0].constant set value true