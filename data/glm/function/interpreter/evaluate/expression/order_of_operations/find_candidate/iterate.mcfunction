execute store result score .precedence glm.interpreter run data get storage glm:interpreter evaluate.order_of_operations.temp[1].precedence
execute store result score .candidate_precedence glm.interpreter run data get storage glm:interpreter evaluate.order_of_operations.candidate_expression.precedence

execute if score .precedence glm.interpreter < .candidate_precedence glm.interpreter run function glm:interpreter/evaluate/expression/order_of_operations/find_candidate/select

data modify storage glm:interpreter evaluate.order_of_operations.before_current append from storage glm:interpreter evaluate.order_of_operations.temp[0]
data remove storage glm:interpreter evaluate.order_of_operations.temp[0]
data modify storage glm:interpreter evaluate.order_of_operations.before_current append from storage glm:interpreter evaluate.order_of_operations.temp[0]
data remove storage glm:interpreter evaluate.order_of_operations.temp[0]

execute if data storage glm:interpreter evaluate.order_of_operations.temp[1] run function glm:interpreter/evaluate/expression/order_of_operations/find_candidate/iterate
