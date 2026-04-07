resource "aws_instance" "my_ec2" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-EC2"
  }
}