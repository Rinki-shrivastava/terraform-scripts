# create EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0d442a425e2e0a743"
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform-instance"
  }
}