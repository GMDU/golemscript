
function glm:parser/close/check
execute if data storage glm:parser stack[-1].metadata.close{closed:true} run function glm:parser/parse/block/close