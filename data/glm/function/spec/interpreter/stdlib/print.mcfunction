function glm:spec/helpers/check/stdout {describes: "PRINT 1", expects: ["'Hello, World!'"], receives: ["print('Hello, World!')"]}
function glm:spec/helpers/check/stdout {describes: "PRINT 2", expects: ["'[{foo: 123}, /abc/, minecraft:stone, \\'\\', true, undefined, <proc:print>]'"], receives: ["print([{foo:123}, /abc/, :stone, '', true, foo, -> print])"]}
