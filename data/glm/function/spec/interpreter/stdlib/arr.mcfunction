function glm:spec/helpers/check/return {describes: "ARR 1", expects: ["['a', 'b', 'c']"], receives: ["arr('abc')"]}
function glm:spec/helpers/check/return {describes: "ARR 2", expects: ["[['a', 1], ['b', 2]]"], receives: ["arr({a: 1, b: 2})"]}
function glm:spec/helpers/check/return {describes: "ARR 3", expects: ["[1, 2, 3]"], receives: ["arr([1,2,3])"]}
