data modify storage glm:interpreter evaluate.operation.result set value {type: "literal", variant: "integer", value: 0}
execute store result storage glm:interpreter evaluate.operation.result.value int -1 run scoreboard players get $value glm.interpreter