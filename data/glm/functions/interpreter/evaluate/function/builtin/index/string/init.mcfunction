data remove storage glm:interpreter temp.index
data modify storage glm:interpreter temp.index.match set from storage glm:interpreter evaluate.stack[-1].args[1].value

function glm:interpreter/evaluate/function/builtin/index/string/iterate
