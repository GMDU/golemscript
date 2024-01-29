data modify storage glm:parser temp.set_expression set value {type:"expression",metadata:{close:{type:"alternate",value:["^n"]}}}

execute if data storage glm:parser stack[-1].metadata.close{type:"single"} run data modify storage glm:parser temp.set_expression.metadata.close.value append from storage glm:parser stack[-1].metadata.close.value

execute if data storage glm:parser stack[-1].metadata.close{type:"alternate"} run data modify storage glm:parser temp.set_expression.metadata.close.value append from storage glm:parser stack[-1].metadata.close.value[]

execute if data storage glm:parser stack[-1].metadata.close{type:"end"} run data modify storage glm:parser temp.set_expression.metadata.close set value {type:"single",value:"^n"}

data modify storage glm:parser stack append from storage glm:parser temp.set_expression