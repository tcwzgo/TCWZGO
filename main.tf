module "example_files" {
  source = "./modules/files"

  file_count = 3
  filename   = "test_file"
  content    = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
}

module "example_read" {
  source          = "./modules/read"
  original_names  = module.example_files.file_names
}

output "read_prefixed_file_names" {
  description = "File names received from the read module with a prefix"
  value       = module.example_read.prefixed_names
}