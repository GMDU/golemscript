execute unless data storage glm:api/interpreter/function register.target[] run data modify storage glm:api/interpreter/function register.error set value "[API] Expected a list of functions to register."
execute unless data storage glm:api/interpreter/function register.target[] run return 400

data modify storage glm:interpreter registry.external prepend from storage glm:api/interpreter/function register.target[]

return 200
