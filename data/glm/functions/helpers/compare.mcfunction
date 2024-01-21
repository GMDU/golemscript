data remove storage glm:helpers/compare output

execute if data storage glm:helpers/compare {target:"^w"} run function glm:helpers/compare/whitespace
execute unless data storage glm:helpers/compare {target:"^w"} run function glm:helpers/compare/character