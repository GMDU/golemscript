function glm:spec/helpers/check {describes: "Map on an Array", expects: ["[2,3,4]"], receives: ["map([1,2,3], ->(x) x + 1)"]}
function glm:spec/helpers/check {describes: "Map on an Object", expects: ["[['a', 2],['b', 3],['c', 4]]"], receives: ["map({a: 1, b: 2, c: 3}, ->(x, y) [x, y + 1])"]}