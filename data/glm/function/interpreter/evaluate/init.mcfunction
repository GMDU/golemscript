data modify storage glm:interpreter evaluate.current set from storage glm:interpreter evaluate.stack[-1]
data modify storage glm:interpreter evaluate.break set value false
data modify storage glm:interpreter evaluate.loop set value false

execute if data storage glm:interpreter evaluate.current{type:"block"} run function glm:interpreter/evaluate/block/init
execute if data storage glm:interpreter evaluate.current{type:"literal"} run function glm:interpreter/evaluate/literal/init
execute if data storage glm:interpreter evaluate.current{type:"expression"} run function glm:interpreter/evaluate/expression/init
execute if data storage glm:interpreter evaluate.current{type:"binary_operation"} run function glm:interpreter/evaluate/binary_operation/init
execute if data storage glm:interpreter evaluate.current{type:"unary_operation"} run function glm:interpreter/evaluate/unary_operation/init
execute if data storage glm:interpreter evaluate.current{type:"function"} run function glm:interpreter/evaluate/function/init
execute if data storage glm:interpreter evaluate.current{type:"instruction"} run function glm:interpreter/evaluate/instruction/init

execute if data storage glm:interpreter error run return -1

execute unless data storage glm:interpreter evaluate.next unless data storage glm:interpreter evaluate{loop:true} run function glm:interpreter/evaluate/close
execute if data storage glm:interpreter evaluate.replace run data modify storage glm:interpreter evaluate.next set from storage glm:interpreter evaluate.replace
execute if data storage glm:interpreter evaluate.next run function glm:interpreter/evaluate/next

execute if data storage glm:interpreter evaluate{break:true} run return -1

execute if data storage glm:interpreter evaluate.stack[] run function glm:interpreter/evaluate/init
