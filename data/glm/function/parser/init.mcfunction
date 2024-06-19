data merge storage glm:parser {stack:[{"type":"block",value:[],metadata:{close:{type:"single",value:"^x"}}}],raise:"",tokenise:{output:[]},current:{value:"",consumed:false,escape:{escaped:false,status:"none"}},exit:0b,temp:{},parent:{},close:false}

data modify storage glm:parser tokenise.target set from storage glm:parser target
function glm:parser/tokenise

data modify storage glm:parser iterate.target set from storage glm:parser tokenise.output
data modify storage glm:parser iterate.target append value "^n"
data modify storage glm:parser iterate.target append value "^x"

function glm:parser/iterate

execute unless data storage glm:parser {raise:""} run function glm:parser/raise