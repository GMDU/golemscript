data modify storage glm:interpreter temp.index.match set from storage glm:api/interpreter/function execute.args[1].value
scoreboard players add $index glm.interpreter 1
data remove storage glm:interpreter temp.index.checking[0]
data modify storage glm:api/interpreter/function execute.args[0].value prepend from storage glm:interpreter temp.index.checking[]
data modify storage glm:interpreter temp.index.checking set value []
