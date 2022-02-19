resource "aws_instance" "jenkins-master" {
  ami             = "ami-033b95fb8079dc481"
  instance_type   = "t3.medium"
  security_groups = [aws_security_group.jenkins-sg.name]
  key_name        = "Srini-key"
  user_data       = file("jenkins_master_install.sh")
  availability_zone = "us-east-1a"
  tags = {
    Name = "jenkins-master"
  }
}

resource "aws_instance" "jenkins-slave" {
  ami             = "ami-033b95fb8079dc481"
  instance_type   = "t3.medium"
  security_groups = [aws_security_group.jenkins-sg.name]
  key_name        = "Srini-key"
  user_data       = file("jenkins_slave_install.sh")
  availability_zone = "us-east-1a"
  tags = {
    Name = "jenkins-slave"
  }
}