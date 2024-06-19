# Lookup the id from the db using a macro
$data modify storage glm:runtime temp.data set from storage glm:runtime db.$(id)
