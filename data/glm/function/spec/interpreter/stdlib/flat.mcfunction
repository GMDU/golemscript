function glm:spec/helpers/check/return {describes: "FLAT 1", expects: ["[1, 2, [3]]"], receives: ["flat([1,[2,[3]]])"]}
function glm:spec/helpers/check/return {describes: "FLAT 2", expects: ["[1, 2, 3]"], receives: ["flat([1,[2,[3]]], 2)"]}
