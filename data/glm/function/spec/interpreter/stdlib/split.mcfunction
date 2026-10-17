function glm:spec/helpers/check/return {describes: "SPLIT 1", expects: ["['Hi', 'there', 'bob']"], receives: ["split('Hi there bob', ' ')"]}
function glm:spec/helpers/check/return {describes: "SPLIT 2", expects: ["['Hello, ', 'world!']"], receives: ["split('Hello, , ,!world!', ', ,!')"]}
function glm:spec/helpers/check/return {describes: "SPLIT 3", expects: ["['f','i','z','z','b','u','z','z']"], receives: ["split('fizzbuzz')"]}
