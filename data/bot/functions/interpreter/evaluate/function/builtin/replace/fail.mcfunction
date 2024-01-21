data modify storage glm:interpreter temp.replace.match set from storage glm:interpreter evaluate.stack[-1].args[1].value
data modify storage glm:api/interpreter/function execute.return.value append from storage glm:interpreter temp.replace.checking[0]
data remove storage glm:interpreter temp.replace.checking[0]
data modify storage glm:interpreter evaluate.stack[-1].args[0].value prepend from storage glm:interpreter temp.replace.checking[]
data modify storage glm:interpreter temp.replace.checking set value []
