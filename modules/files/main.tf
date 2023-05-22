module "read" {
  source          = "../read"
  original_names  = module.files.file_names
}

resource "null_resource" "file" {
  count = var.file_count

  triggers = {
    filename = "${path.module}/${var.filename}-${count.index}.txt"
  }

  provisioner "local-exec" {
    command = "echo '${var.content}' > ${self.triggers.filename}"
  }
}

resource "null_resource" "example" {
  depends_on = [module.read]
}