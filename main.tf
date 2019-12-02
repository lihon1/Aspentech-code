provider "aws" {
  profile    = "default"
  region     = "us-east-2"
}


resource "aws_instance" "example" {
  ami = "ami-0d5d9d301c853a04a"
  instance_type = "t2.micro"
}
