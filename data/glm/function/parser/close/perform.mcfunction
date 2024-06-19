data modify storage glm:parser parsed set from storage glm:parser stack[-1]
data remove storage glm:parser stack[-1]
data modify storage glm:parser close set value false

data modify storage glm:parser parent set from storage glm:parser stack[-1]

execute if data storage glm:parser parent{type:"block"} run function glm:parser/parse/block/child_closed
execute if data storage glm:parser parent{type:"expression"} run function glm:parser/parse/expression/child_closed
execute if data storage glm:parser parent{type:"instruction"} run function glm:parser/parse/instruction/child_closed
execute if data storage glm:parser parent{type:"literal"} run function glm:parser/parse/literal/child_closed

data remove storage glm:parser parsed