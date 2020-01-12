provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "ami-062f7200baf2fa504"
  instance_type = "t2.micro"
  key_name      = "jenkinskeypair"
 # iam_role      = "jenkins"
 # role          = "jenkins"

  tags = {
    Name = "My Instance"
   }
}
output "instance_id" {
 # description = "List of IDs of instances"
  value  =  aws_instance.web.id
}

output "instance_ip_addr" {
  value = aws_instance.web.public_ip
}






