execute if data storage glm:interpreter evaluate.current{variant:"array"} run function glm:interpreter/evaluate/literal/array/init
execute if data storage glm:interpreter evaluate.current{variant:"string"} run function glm:interpreter/evaluate/literal/string/init
execute if data storage glm:interpreter evaluate.current{variant:"variable"} run function glm:interpreter/evaluate/literal/variable/init
execute if data storage glm:interpreter evaluate.current{variant:"function"} run function glm:interpreter/evaluate/literal/function/init
execute if data storage glm:interpreter evaluate.current{variant:"object"} run function glm:interpreter/evaluate/literal/object/init
execute if data storage glm:interpreter evaluate.current{variant:"regex"} run function glm:interpreter/evaluate/literal/regex/init
execute if data storage glm:interpreter evaluate.current{variant:"resource"} run function glm:interpreter/evaluate/literal/resource/init