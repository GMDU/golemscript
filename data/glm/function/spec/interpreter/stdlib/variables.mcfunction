function glm:spec/helpers/check/stdout {describes: "Variables 1", expects: ["1"], receives: ["if true {var a = 1}\necho(a)"]}
function glm:spec/helpers/check/stdout {describes: "Variables 2", expects: ["1"], receives: ["if true {let b = 1\necho(b)}"]}
function glm:spec/helpers/check/stdout/undefined {describes: "Variables 3", receives: ["if true {let b = 1}\necho(b)"]}
