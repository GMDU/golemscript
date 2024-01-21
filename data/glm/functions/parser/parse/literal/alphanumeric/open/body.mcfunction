function glm:parser/parse/literal/alphanumeric/filters/body

execute if data storage moxlib:api/string/filter {output:true} run data modify storage glm:parser stack[-1].metadata.status set value "closed"

execute if data storage moxlib:api/string/filter {output:false} run data modify storage glm:parser stack[-1].value append from storage glm:parser current.value
execute if data storage moxlib:api/string/filter {output:false} run data modify storage glm:parser current.consumed set value true