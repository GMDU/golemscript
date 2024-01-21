execute unless data storage glm:interpreter evaluate.order_of_operations.current[1] run data modify storage glm:interpreter evaluate.order_of_operations.result set from storage glm:interpreter evaluate.order_of_operations.current[0]
execute unless data storage glm:interpreter evaluate.order_of_operations.current[1] run return -1

function glm:interpreter/evaluate/expression/order_of_operations/find_candidate/init

data modify storage glm:interpreter evaluate.order_of_operations.result set value {type: "expression", value: []}
data modify storage glm:interpreter evaluate.order_of_operations.result.value append from storage glm:interpreter evaluate.order_of_operations.before[]
data modify storage glm:interpreter evaluate.order_of_operations.result.value append from storage glm:interpreter evaluate.order_of_operations.candidate_expression
data modify storage glm:interpreter evaluate.order_of_operations.result.value append from storage glm:interpreter evaluate.order_of_operations.after[]
