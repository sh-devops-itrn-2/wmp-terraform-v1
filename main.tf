resource "aws_instance" "frontend" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "frontend"
  }
}
resource "aws_instance" "postgresql" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "postgresql"
  }
}
resource "aws_instance" "auth-service" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "auth-service"
  }
}
resource "aws_instance" "portfolio-service" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "portfolio-service"
  }
}
resource "aws_instance" "analytics" {
  ami           = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-03f7da9ebe210e12a"]
  tags = {
    Name = "analytics-service"
  }
}

