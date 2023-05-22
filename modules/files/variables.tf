variable "file_count" {
  description = "Number of files to create"
  type        = number
  default     = 1
}

variable "filename" {
  description = "Base filename for the files"
  type        = string
}

variable "content" {
  description = "Content of the files"
  type        = string
}