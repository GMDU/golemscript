function glm:api/interpreter/init
data modify storage glm:api/interpreter init set from storage glm:api/interpreter init.output

data modify storage glm:spec/helpers run.out append from storage glm:api/interpreter stdio.out[]
data modify storage glm:spec/helpers run.error append from storage glm:api/interpreter stdio.error[]

execute if data storage glm:api/interpreter init.stack[] run function glm:spec/helpers/run/iterate