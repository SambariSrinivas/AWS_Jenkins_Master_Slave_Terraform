output "jenkins-master-public-ip" {
  value = aws_instance.jenkins-master.public_ip
}
output "jenkins-slave-public-ip" {
  value = aws_instance.jenkins-slave.public_ip
}