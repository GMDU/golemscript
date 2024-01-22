$data modify storage glm:api/parser init.target set value $(program)
function glm:api/parser/init

data modify storage glm:api/interpreter init set value {stack:[],variables:[],functions:[],scope:0}
data modify storage glm:api/interpreter init.stack append from storage glm:api/parser init.output
execute if data storage glm:api/interpreter init.stack[] run function glm:spec/helpers/run/iterate