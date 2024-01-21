data modify storage glm:parser stack[-1].metadata.parent_close set from storage glm:parser stack[-2].metadata.close
data remove storage glm:parser stack[-1].metadata.has_prefix
data remove storage glm:parser stack[-1].metadata.operator
execute if data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser current.consumed set value true
execute unless data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser stack[-1].metadata.status set value "open"
