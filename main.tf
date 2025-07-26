provider "local" {}

resource "local_file" "file1" {
  filename = "file1.txt"
  content  = "This is file1.txt"
}

resource "local_file" "file2" {
  filename = "file2.txt"
  content  = "This is file2.txt"
}

resource "null_resource" "dirs" {
  provisioner "local-exec" {
    command = "mkdir -p dir1 dir2"
  }
}

