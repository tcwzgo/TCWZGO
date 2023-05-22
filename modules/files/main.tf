resource "null_resource" "file" {
  count = var.file_count

  triggers = {
    filename = "${path.module}/${var.filename}-${count.index}.txt"
  }

  provisioner "local-exec" {
    command = "echo '${var.content}' > ${self.triggers.filename}"
  }
}