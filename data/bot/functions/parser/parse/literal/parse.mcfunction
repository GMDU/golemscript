data modify storage glm:parser parent set from storage glm:parser stack[-1]

execute if data storage glm:parser parent{variant:"alphanumeric"} run function glm:parser/parse/literal/alphanumeric/init
execute if data storage glm:parser parent{variant:"array"} run function glm:parser/parse/literal/array/init
execute if data storage glm:parser parent{variant:"function"} run function glm:parser/parse/literal/function/init
execute if data storage glm:parser parent{variant:"integer"} run function glm:parser/parse/literal/integer/init
execute if data storage glm:parser parent{variant:"object"} run function glm:parser/parse/literal/object/init
execute if data storage glm:parser parent{variant:"regex"} run function glm:parser/parse/literal/regex/init
execute if data storage glm:parser parent{variant:"string"} run function glm:parser/parse/literal/string/init
execute if data storage glm:parser parent{variant:"resource"} run function glm:parser/parse/literal/resource/init
execute if data storage glm:parser parent{variant:"proc"} run function glm:parser/parse/literal/proc/init

execute if data storage glm:parser stack[-1].metadata{status:"closed"} run function glm:parser/parse/literal/parameter_or_close