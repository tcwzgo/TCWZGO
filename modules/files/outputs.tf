output "file_count" {
  description = "Number of files created"
  value       = var.file_count
}

output "file_names" {
  description = "List of file names created"
  value       = [for i in range(var.file_count) : "${path.module}/${var.filename}-${i}.txt"]
}