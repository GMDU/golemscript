function glm:spec/helpers/check/return {describes: "REGEX", expects: ["'aaabc1'"], receives: ["let rgx = /a+b?c./", "match(rgx, 'aaabc123')"]}
