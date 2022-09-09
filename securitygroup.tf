
resource "aws_security_group" "jenkins" {
  name        = "jenkins"
  description = "jenkins"
  vpc_id = "vpc-07e659da3994ee4fd"

  ingress {
    description     = "allow ${var.jenkins_port}"
    from_port       = var.jenkins_port
    to_port         = var.jenkins_port
    protocol        = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "jenkins"
  }
}