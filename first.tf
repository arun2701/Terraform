resource "local_file" "test" {
  filename = "/home/arun/test.txt"
  content = "Hello from Terraform"
}