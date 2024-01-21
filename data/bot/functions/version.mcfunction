data modify storage glm:version name set value "GolemScript"

data modify storage glm:version major set value 0
data modify storage glm:version minor set value 3
data modify storage glm:version patch set value 1
data modify storage glm:version suffix set value ""

execute if data storage glm:version {suffix:""} run tellraw @a {"nbt":"name","storage":"glm:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"glm:version","extra":[{"text":"."},{"nbt":"minor","storage":"glm:version"},{"text":".","extra":[{"nbt":"patch","storage":"glm:version"}]}]}]}]}

execute unless data storage glm:version {suffix:""} run tellraw @a {"nbt":"name","storage":"glm:version","extra":[{"text":" v","extra":[{"nbt":"major","storage":"glm:version","extra":[{"text":"."},{"nbt":"minor","storage":"glm:version"},{"text":".","extra":[{"nbt":"patch","storage":"glm:version"},{"text":"-","extra":[{"nbt":"suffix","storage":"glm:version"}]}]}]}]}]}
