function glm:interpreter/evaluate/function/builtin/upper/encode

data remove storage glm:interpreter evaluate.stack[-1].args[0].value[0]
execute if data storage glm:interpreter evaluate.stack[-1].args[0].value[] run function glm:interpreter/evaluate/function/builtin/upper/iterate