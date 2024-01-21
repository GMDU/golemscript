execute unless data storage glm:interpreter evaluate.current.metadata.status run function glm:interpreter/evaluate/binary_operation/evaluate_a
execute if data storage glm:interpreter evaluate.current.metadata{status:"evaluating_a"} run function glm:interpreter/evaluate/binary_operation/evaluate_b
execute if data storage glm:interpreter evaluate.current.metadata{status:"evaluating_b"} run function glm:interpreter/evaluate/binary_operation/perform_operation
