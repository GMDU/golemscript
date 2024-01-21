function glm:interpreter/evaluate/function/builtin/upper/encode

data remove storage glm:api/interpreter/function execute.args[0].value[0]
execute if data storage glm:api/interpreter/function execute.args[0].value[] run function glm:interpreter/evaluate/function/builtin/upper/iterate