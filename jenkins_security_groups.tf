resource "aws_security_group" "jenkins-sg" {
  name        = "jenkins-sg"
  description = "This is the security group used to allow ingress and egress traffic to and from the Jenkins instances"
  ingress {
    description = "used for ssh traffic"
    from_port   = 22
    protocol    = "tcp"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "used for jenkins traffic 8080 port"
    from_port   = 8080
    protocol    = "tcp"
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "outbound rules for jenkins to connect internet"
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Jenkins-SG"
  }
}