module "data" {
  source     = "../data"
  file_path  = module.files.file_path
}


resource "null_resource" "example" {
  depends_on = [module.data]
}


output "data_file_id" {
  value = module.data.file_id
}