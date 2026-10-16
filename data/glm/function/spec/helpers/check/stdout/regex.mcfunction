$say $(describes)
function observer:api/test/init
$data modify storage observer:test/it describes set value "$(describes)"
  data modify storage observer:test/it expects set value true

  $function glm:spec/helpers/run/init {program:$(receives)}

  data modify storage regex:api/match target set from storage glm:spec/helpers run.out[-1].value
  $data modify storage regex:api/match pattern set value "$(pattern)"

  function regex:api/match

  execute store result storage observer:test/it receives byte 1 run data get storage regex:api/match success

function observer:api/test/perform