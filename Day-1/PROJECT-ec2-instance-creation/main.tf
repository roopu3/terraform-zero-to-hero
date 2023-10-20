#This is sample terraform file, used to create a instance or with extension to stop that created instance state.
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
/*if you want to stop the newly created instance then uncomment this block
resource "aws_ec2_instance_state" "check" { #instead of operation check, can use another operation name- still code works fine. 
  instance_id = aws_instance.check.id
  state = "stopped"
}*/
