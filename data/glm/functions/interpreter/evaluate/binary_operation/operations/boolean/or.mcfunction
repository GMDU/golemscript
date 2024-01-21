execute unless score .a glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.operation.result set from storage glm:interpreter evaluate.stack[-1].a
execute if score .a glm.interpreter matches 0 run data modify storage glm:interpreter evaluate.operation.result set from storage glm:interpreter evaluate.stack[-1].b
