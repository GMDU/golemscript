function glm:spec/helpers/check/stdout {describes: "Arrays 1", expects: ["[1, 2, 3, 4]"], receives: ["echo([1, 2, 3] << 4)"]}
function glm:spec/helpers/check/stdout {describes: "Arrays 2", expects: ["[1, 2, 3, 4]"], receives: ["echo(1 >> [2, 3, 4])"]}
function glm:spec/helpers/check/stdout {describes: "Arrays 3", expects: ["[1, 2, 3, 4]"], receives: ["echo(1 >> [2, 3] << 4)"]}
function glm:spec/helpers/check/stdout {describes: "Arrays 4", expects: ["[1, 2, 3, 4]"], receives: ["let arr = [1, 2, 3]", "arr << 4", "echo(arr)"]}
function glm:spec/helpers/check/stdout {describes: "Arrays 5", expects: ["[1, 2, 3, 4]"], receives: ["echo([1, 2] + [3, 4])"]}
function glm:spec/helpers/check/stdout {describes: "Arrays 6", expects: ["[1, 3, 2, 'bar']"], receives: ["echo([[1,2,3][0],[1,2,3][-1],[[1,2]][0][1],[{foo:['bar']}][0].foo[-1]])"]}
