variable "fine_count" {}

variable "path" {
    default = "E:\\Terraform\\LocalFile\\"
}

resource "local_file" "example" {
  count    = var.fine_count
  filename = "${var.path}filename11_${count.index}.txt"
  content  = "This is local example file number ${count.index}"
}

# resource "local_file" "example2" {
#   count    = var.fine_count
#   filename = "${var.path}filename2_${count.index}.txt"
#   content  = "This is local example file number ${count.index}"
# }


output "files" {
    value = local_file.example[*].filename
}

output "contents" {
    value = local_file.example[*].content
}

output "combined" {
    value = zipmap(local_file.example[*].filename, local_file.example[*].content)
}