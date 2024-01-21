data remove storage glm:parser parsed.metadata
execute unless data storage glm:parser stack[-1].parameters run data modify storage glm:parser stack[-1].parameters set value []

data modify storage glm:parser current.consumed set value true
execute if data storage glm:parser parsed{type:"literal",variant:"alphanumeric"} run function glm:parser/parse/literal/child_closed/dot_parameter

data modify storage glm:parser stack[-1].parameters append from storage glm:parser parsed