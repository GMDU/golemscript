execute if data storage glm:parser stack[-1].metadata{opened:true} run data modify storage glm:helpers/registry target set from storage glm:helpers/registry output.matches
execute unless data storage glm:parser stack[-1].metadata{opened:true} run function glm:parser/parse/line/before
execute unless data storage glm:parser temp{replaced:true} run function glm:parser/parse/line/parse