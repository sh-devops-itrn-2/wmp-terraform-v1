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

resource "aws_route53_record" "frontend" {
  zone_id = "Z03351562OJATKDWYEO40"
  name    = "frontend-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.public_ip]
}

resource "aws_route53_record" "postgresql" {
  zone_id = "Z03351562OJATKDWYEO40"
  name    = "postgresql-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.postgresql.private_ip]
}

resource "aws_route53_record" "auth-service" {
  zone_id = "Z03351562OJATKDWYEO40"
  name    = "auth-service-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.auth-service.private_ip]
}

resource "aws_route53_record" "portfolio" {
  zone_id = "Z03351562OJATKDWYEO40"
  name    = "portfolio-service-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.portfolio-service.private_ip]
}

resource "aws_route53_record" "analytics" {
  zone_id = "Z03351562OJATKDWYEO40"
  name    = "analytics-service-dev"
  type    = "A"
  ttl     = 30
  records = [aws_instance.analytics.private_ip]
}





