function glm:spec/helpers/check/stdout {describes: "Int 1", expects: ["'-12'"], receives: ["print(int(-12))"]}
function glm:spec/helpers/check/return {describes: "Int 2", expects: ["15"], receives: ["int('15')"]}
function glm:spec/helpers/check/stdout {describes: "Int 3", expects: ["'-5'"], receives: ["print(int('-05'))"]}
function glm:spec/helpers/check/return {describes: "Int 4", expects: ["0"], receives: ["int('not an int')"]}
function glm:spec/helpers/check/stderr {describes: "Int 5", receives: ["int(/uh/)"]}
