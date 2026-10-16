function glm:spec/helpers/check/return {describes: "MIN/MAX 1", expects: ["1"], receives: ["min(1,10)"]}
function glm:spec/helpers/check/return {describes: "MIN/MAX 2", expects: ["10"], receives: ["max(1,10)"]}
function glm:spec/helpers/check/return {describes: "MIN/MAX 3", expects: ["1"], receives: ["min(10,1)"]}
function glm:spec/helpers/check/return {describes: "MIN/MAX 4", expects: ["10"], receives: ["max(10,1)"]}
function glm:spec/helpers/check/stdout {describes: "MIN/MAX 5", expects: ["'-10'"], receives: ["print(min(-10,-9))"]}
function glm:spec/helpers/check/return {describes: "MIN/MAX 6", expects: ["1"], receives: ["max(1,-2)"]}
