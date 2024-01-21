data remove storage glm:interpreter temp.index
data modify storage glm:interpreter temp.index.match set from storage glm:api/interpreter/function execute.args[1].value

function glm:interpreter/evaluate/function/builtin/index/string/iterate
