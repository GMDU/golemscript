data modify storage glm:interpreter evaluate.order_of_operations.current set from storage glm:interpreter evaluate.stack[-1].value

function glm:interpreter/evaluate/expression/order_of_operations/init

data modify storage glm:interpreter evaluate.replace set from storage glm:interpreter evaluate.order_of_operations.result
