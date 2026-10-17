function glm:spec/helpers/check/return {describes: "SIGN 1", expects: ["0"], receives: ["sign(-0)"]}
function glm:spec/helpers/check/return {describes: "SIGN 2", expects: ["1"], receives: ["sign(124)"]}
function glm:spec/helpers/check/stdout {describes: "SIGN 3", expects: ["'-1'"], receives: ["print(sign(-3))"]}

