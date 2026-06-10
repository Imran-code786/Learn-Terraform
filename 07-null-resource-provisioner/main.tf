resource "aws_instance" "Name" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-04692f74cd3fa91ac"]

  tags = {
    Name = "Alieotech"
  }
}

resource "null_resource" "test" {
  triggers = {
    always = timestamp()
  }

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      host     = aws_instance.Name.public_ip
      user     = "ec2-user"
      password = "DevOps321"

    }

    inline = [
      "echo Hello >/tmp/some",
      "echo Hello >/tmp/some123",
      "echo Hello >/tmp/imran"
    ]
  }
}
