function glm:parser/parse/literal/alphanumeric/filters/first
data remove storage glm:parser temp
execute if data storage moxlib:api/string/filter {output:true} run data modify storage glm:parser raise set value '["[Alphanumeric] Unexpected: \'",{"storage":"glm:parser","nbt":"current.value"},"\', expected [A-Z,a-z]."]'

data modify storage glm:parser current.consumed set value true
data modify storage glm:parser stack[-1].value append from storage glm:parser current.value