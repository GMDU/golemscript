scoreboard players add $scope glm.interpreter 1
data modify storage glm:interpreter temp.parameters set from storage glm:interpreter evaluate.stack[-1].value.args

function glm:interpreter/evaluate/function/proc/set_args/iterate

scoreboard players remove $scope glm.interpreter 1
