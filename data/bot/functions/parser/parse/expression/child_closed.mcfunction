data remove storage glm:parser parsed.metadata
execute if data storage glm:parser parsed{type:"literal",variant:"alphanumeric"} run function glm:parser/parse/expression/child_closed/alphanumeric

execute if data storage glm:parser stack[-1].metadata{has_prefix:true} run function glm:parser/parse/expression/child_closed/has_prefix

data modify storage glm:parser stack[-1].value append from storage glm:parser parsed
data modify storage glm:parser stack[-1].metadata.status set value "close_or_operate"