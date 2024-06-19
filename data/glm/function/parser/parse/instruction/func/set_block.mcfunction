execute if data storage glm:parser current{flags:["whitespace"]} run data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser current{flags:["whitespace"]} run return -1

data modify storage glm:parser stack append value {type:"block",metadata:{close:{type:"end"}}}

execute unless data storage glm:parser current{value:"{"} run return -1

data modify storage glm:parser stack[-1].metadata.close set value {type:"single", value: "}"}
data modify storage glm:parser current.consumed set value true