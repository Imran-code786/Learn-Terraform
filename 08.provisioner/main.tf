resource "aws_instance" "web" {
  ami           = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0c9249264d6806c29"]

  tags = {
    Name = "Hello world"
  }

provisioner "remote-exec" {

    connection {
        type  = "ssh"
        user = "centos"
        password = "DevOps321"
        host = self.public_ip
    }
    inline = [
      "sudo labauto ansible",
      "ansible-pull -i localhost, -U https://github.com/Imran-code786/roboshop-ansible main.yml -e env=dev -e role_name=frontend"
    ]
  }



}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["950538586636"]

}