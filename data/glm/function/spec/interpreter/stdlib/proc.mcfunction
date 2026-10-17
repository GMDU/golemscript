function glm:spec/helpers/check/stdout {describes: "Procs 1", expects: ["'Hello'"], receives: ["let write = -> print", "write('Hello')"]}
function glm:spec/helpers/check/stdout {describes: "Procs 2", expects: ["3"], receives: ["func test(a, b) {return a+b}", "let add = -> test", "echo(add(1, 2))"]}
function glm:spec/helpers/check/stdout {describes: "Procs 3", expects: ["36"], receives: ["let sum = -> (a, b) a + b", "echo(sum(15, 21))"]}
function glm:spec/helpers/check/stdout {describes: "Procs 4", expects: ["'In a proc!'"], receives: ["let proc = -> () {print('In a proc!')}", "proc()"]}
function glm:spec/helpers/check/stdout {describes: "Procs 5", expects: ["true"], receives: ["let proc = -> () {return true}", "echo(proc())"]}
