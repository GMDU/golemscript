data modify storage glm:parser parent set from storage glm:parser stack[-1]
execute if data storage glm:parser parent{variant:"array"} run function glm:parser/parse/literal/array/child_closed
execute if data storage glm:parser parent{variant:"function"} run function glm:parser/parse/literal/function/child_closed
execute if data storage glm:parser parent{variant:"object"} run function glm:parser/parse/literal/object/child_closed
execute if data storage glm:parser parent{variant:"resource"} run function glm:parser/parse/literal/resource/child_closed
execute if data storage glm:parser parent{variant:"proc"} run function glm:parser/parse/literal/proc/child_closed