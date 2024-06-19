data modify storage glm:parser expression.current set from storage glm:parser stack[-1].metadata.status
execute if data storage glm:parser expression{current:"prefix"} run function glm:parser/parse/expression/operator/prefix/init
execute if data storage glm:parser expression{current:"literal"} run function glm:parser/parse/expression/type
execute if data storage glm:parser expression{current:"infix"} run function glm:parser/parse/expression/operator/infix/init