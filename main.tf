module "files" {
  source = "./modules/files"

  file_count = 3
  filename   = "test_file"
  content    = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
}

module "read" {
  source          = "./modules/read"
  original_names  = module.files.file_names
}

output "read_prefixed_file_names" {
  description = "File names received from the read module with a prefix"
  value       = module.read.prefixed_names
}

module "write" {
  source    = "./modules/write"
  answer_1  = var.answer_1
  answer_2  = var.answer_2
  answer_3  = var.answer_3
  answer_4  = var.answer_4
  answer_5  = var.answer_5
}

output "question_1_number" {
  value = module.write.question_1_number
}

output "question_2_number" {
  value = module.write.question_2_number
}

output "question_3_number" {
  value = module.write.question_3_number
}

output "question_4_number" {
  value = module.write.question_4_number
}

output "question_5_number" {
  value = module.write.question_5_number
}