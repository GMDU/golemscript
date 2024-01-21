execute unless data storage bot:api/interpreter/function register.target[] run data modify storage bot:api/interpreter/function register.error set value "[API] Expected a list of functions to register."
execute unless data storage bot:api/interpreter/function register.target[] run return 400

data modify storage bot:interpreter registry.external prepend from storage bot:api/interpreter/function register.target[]

return 200
