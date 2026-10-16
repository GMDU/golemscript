function glm:spec/helpers/check/stdout/undefined {describes: "Keywords 1", receives: ["if true {let x = 1}\necho(x)"]}
function glm:spec/helpers/check/stdout {describes: "Keywords 2", expects: ["1"], receives: ["if true {var x = 1}\necho(x)"]}
function glm:spec/helpers/check/stdout {describes: "Keywords 3", expects: ["[1, 1]"], receives: ["let a = []","loop 2 {a << 1\nnext\na << 1}","echo(a)"]}
function glm:spec/helpers/check/stdout {describes: "Keywords 4", expects: ["[1]"], receives: ["let a = []","loop 2 {a << 1\nbreak\n}","echo(a)"]}