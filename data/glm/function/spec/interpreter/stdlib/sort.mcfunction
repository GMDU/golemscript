function glm:spec/helpers/check/return {describes: "SORT 1", expects: ["[1, 2, 3, 4, 5]"], receives: ["sort([1,2,3,4,5])"]}
function glm:spec/helpers/check/return {describes: "SORT 2", expects: ["[5, 4, 3, 2, 1]"], receives: ["sort([1,2,3,4,5], -> (a, b) b <=> a)"]}
