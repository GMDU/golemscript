data modify storage glm:utils/data/collect output set value {match: [], remain: []}
data modify storage glm:utils/data/collect success set value false

function glm:utils/data/collect/init.macro with storage glm:utils/data/collect

execute if data storage glm:utils/data/collect output.match[] run data modify storage glm:utils/data/collect success set value true

data remove storage glm:utils/data/collect target
data remove storage glm:utils/data/collect key