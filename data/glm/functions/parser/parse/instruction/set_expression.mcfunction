execute unless data storage glm:parser stack[-1].metadata.close{type:"single"} run data modify storage glm:parser stack append value {type:"expression",metadata:{close:{type:"single",value:"^n"}}}
execute unless data storage glm:parser stack[-1].metadata.close{type:"single"} run return -1

data modify storage glm:parser temp.set_expression set value {type:"expression",metadata:{close:{type:"single",value:"^n"}}}
data modify storage glm:parser temp.set_expression.metadata.close set value {type:"alternate",value:["^n"]}
data modify storage glm:parser temp.set_expression.metadata.close.value append from storage glm:parser stack[-1].metadata.close.value

data modify storage glm:parser stack append from storage glm:parser temp.set_expression