function glm:spec/helpers/check/stdout {describes: "CALL 1", expects: ["'Hello'"], receives: ["call('print', ['Hello'])"]}
function glm:spec/helpers/check/stdout {describes: "CALL 2", expects: ["'world'"], receives: ["func foo(s1, s2) { print(s1 + s2) }", "let args = ['wor', 'ld']", "call('foo', args)"]}
function glm:spec/helpers/check/stdout {describes: "CALL 3", expects: ["12"], receives: ["func sum(a, b) { return a + b }", "echo(call('sum', [5, 7]))"]}
