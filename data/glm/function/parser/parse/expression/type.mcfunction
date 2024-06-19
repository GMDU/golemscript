data remove storage glm:parser expression.type

function glm:parser/parse/expression/type/proc
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/array
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/object
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/string
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/regex
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/expression
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/integer
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/alphanumeric
execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/resource

execute unless data storage glm:parser expression.type run function glm:parser/parse/expression/type/error
execute if data storage glm:parser expression.type run data modify storage glm:parser stack append from storage glm:parser expression.type