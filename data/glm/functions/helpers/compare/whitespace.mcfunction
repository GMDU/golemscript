data modify storage glm:helpers/compare output set value false
execute if data storage glm:helpers/compare {source:"^n"} run data modify storage glm:helpers/compare output set value true
execute if data storage glm:helpers/compare {source:"^x"} run data modify storage glm:helpers/compare output set value true
execute if data storage glm:helpers/compare {source:"^w"} run data modify storage glm:helpers/compare output set value true
execute if data storage glm:helpers/compare {source:" "} run data modify storage glm:helpers/compare output set value true