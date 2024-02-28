resource "aws_instance" "server1" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name      = "ec2-keypair"
  tags = {
    Name = "Terraform server"
    Team = "DevOps"
    env  = "dev"
  }
  user_data = file("install.sh")
}