data modify storage glm:interpreter check_equality.a set from storage glm:interpreter evaluate.stack[-1].a
data modify storage glm:interpreter check_equality.b set from storage glm:interpreter evaluate.stack[-1].b
function glm:interpreter/utils/check_equality

data modify storage glm:interpreter evaluate.operation.result set value {type: "literal", variant:"boolean", value: false}
execute if data storage glm:interpreter check_equality{result:false} run data modify storage glm:interpreter evaluate.operation.result set value {type: "literal", variant:"boolean", value: true}
