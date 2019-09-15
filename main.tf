provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "webserver" {
  count = 2
  ami           = "ami-05c1fa8df71875112"
  instance_type = "t2.micro"
  tags = {
    Name = "Dickson"
    App  = "master-class"
  }
}
