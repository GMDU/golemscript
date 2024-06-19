data modify storage glm:parser temp.alphanumeric set from storage glm:parser stack[-1].value
function glm:parser/parse/line/replace_with/expression
data modify storage glm:parser stack append value {type:"literal",variant:"alphanumeric"}
data modify storage glm:parser stack[-1].value set from storage glm:parser temp.alphanumeric