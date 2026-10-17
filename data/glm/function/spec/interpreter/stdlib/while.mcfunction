function glm:spec/helpers/check/stdout {describes: "While", expects: ["[5, 4, 3, 2, 1]"], receives: ["let i = 5", "let arr = []", "while i > 0 {arr << i\ni -= 1}", "echo(arr)"]}
