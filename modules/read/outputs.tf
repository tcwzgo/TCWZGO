output "prefixed_names" {
  description = "Original names received from the files module with a prefix"
  value       = [for name in var.original_names : "read-${name}"]
}