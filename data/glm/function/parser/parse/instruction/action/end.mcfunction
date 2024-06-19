data remove storage glm:parser stack[-1]
execute if data storage glm:parser stack[-1].metadata.close{type:"end"} run data modify storage glm:parser close set value true
execute unless data storage glm:parser stack[-1].metadata.close{type:"end"} run data modify storage glm:parser raise set value '"[Block] Unexpected \'end\' keyword in block."'