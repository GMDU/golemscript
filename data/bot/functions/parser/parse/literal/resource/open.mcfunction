data modify storage glm:parser temp.resource_open set value {type:"literal",variant:"alphanumeric",metadata:{exclude:["function","resource"]}}

execute if data storage glm:parser current{value:'"'} run data modify storage glm:parser temp.resource_open set value {type:"literal",variant:"string",metadata:{type:"double"}}
execute if data storage glm:parser current{value:"'"} run data modify storage glm:parser temp.resource_open set value {type:"literal",variant:"string",metadata:{type:"single"}}

data modify storage glm:parser stack append from storage glm:parser temp.resource_open