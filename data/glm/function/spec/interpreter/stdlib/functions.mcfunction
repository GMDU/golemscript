function glm:spec/helpers/check/stdout {describes: "Functions 1", expects: ["3"], receives: ["func plus(a, b) { let c = a + b \n return c }", "echo(plus(1, 2))"]}
function glm:spec/helpers/check/stdout/undefined {describes: "Functions 2", receives: ["func plus(a, b) { let c = a + b \n return c }", "echo(b)"]}
function glm:spec/helpers/check/stdout/undefined {describes: "Functions 3", receives: ["func plus(a, b) { let c = a + b \n return c }", "echo(c)"]}
