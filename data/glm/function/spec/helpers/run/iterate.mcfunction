function glm:api/interpreter/init
data modify storage glm:api/interpreter init set from storage glm:api/interpreter init.output
execute if data storage glm:api/interpreter init.stack[] run function glm:spec/helpers/run/iterate