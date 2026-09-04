function glm:parser/parse/literal/integer/filters/body

execute if data storage glm:utils/string/filter {output:true} run return run data modify storage glm:parser stack[-1].metadata.status set value "convert"

data modify storage glm:parser stack[-1].value append from storage glm:parser current.value
data modify storage glm:parser current.consumed set value true