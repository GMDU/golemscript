data modify storage glm:interpreter evaluate.order_of_operations.before_current set value []
data modify storage glm:interpreter evaluate.order_of_operations.before set value []
data modify storage glm:interpreter evaluate.order_of_operations.after set value []
data modify storage glm:interpreter evaluate.order_of_operations.candidate_expression set value {type: "binary_operation", precedence:127b}
data modify storage glm:interpreter evaluate.order_of_operations.temp set from storage glm:interpreter evaluate.order_of_operations.current

function glm:interpreter/evaluate/expression/order_of_operations/find_candidate/iterate
