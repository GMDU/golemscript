data modify storage glm:interpreter evaluate.return_value.parameters set from storage glm:interpreter evaluate.stack[-1].parameters

execute if data storage glm:interpreter evaluate.return_value.parameters[] run data modify storage glm:interpreter evaluate.replace set from storage glm:interpreter evaluate.return_value
execute unless data storage glm:interpreter evaluate.return_value.parameters[] run data modify storage glm:interpreter evaluate.stack[-1] set from storage glm:interpreter evaluate.return_value