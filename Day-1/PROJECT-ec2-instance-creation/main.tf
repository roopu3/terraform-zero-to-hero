provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "check" {
  ami = "ami-0287a05f0ef0e9d9a"
  instance_type = "t2.micro"
  subnet_id = "subnet-07c64a6e28e4ff23a"
  key_name = "test2"
  tags = {
    Name = "Hello_AWS"
  }
}
