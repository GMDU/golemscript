data modify storage glm:interpreter temp.split.separator set from storage glm:api/interpreter/function execute.args[1].value
data modify storage glm:api/interpreter/function execute.return.value[-1].value append from storage glm:interpreter temp.split.checking[0]
data remove storage glm:interpreter temp.split.checking[0]
data modify storage glm:api/interpreter/function execute.args[0].value prepend from storage glm:interpreter temp.split.checking[]
data modify storage glm:interpreter temp.split.checking set value []
