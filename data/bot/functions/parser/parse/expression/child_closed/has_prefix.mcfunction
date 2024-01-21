data modify storage glm:parser temp.prefix set from storage glm:parser parsed

data modify storage glm:parser parsed set from storage glm:parser stack[-1].metadata.operator
data modify storage glm:parser parsed.value set from storage glm:parser temp.prefix

data remove storage glm:parser temp.prefix
data modify storage glm:parser stack[-1].metadata merge value {has_prefix:false,operator:{}}