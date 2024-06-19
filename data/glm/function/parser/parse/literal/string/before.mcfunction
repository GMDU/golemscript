execute if data storage glm:parser stack[-1].metadata{type:"single"} unless data storage glm:parser current{value:"'"} run data modify storage glm:parser raise set value '["[String] Unexpected: \'",{"storage":"glm:parser","nbt":"current.value"},"\', expected \'."]'
execute if data storage glm:parser stack[-1].metadata{type:"double"} unless data storage glm:parser current{value:"\""} run data modify storage glm:parser raise set value '["[String] Unexpected: \'",{"storage":"glm:parser","nbt":"current.value"},"\', expected \\"."]'

data modify storage glm:parser current.consumed set value true
data modify storage glm:parser stack[-1].metadata.status set value "open"
data modify storage glm:parser stack[-1].value set value []
data modify storage glm:parser next.flags append value "consumes"