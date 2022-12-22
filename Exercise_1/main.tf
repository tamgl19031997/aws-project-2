# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key = "AKIARXC3YQC7DSCEM5XT"
  secret_key = "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"
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "UdacityT2" {
  ami           = "ami-0b5eea76982371e91"
  count         = "4"
  instance_type = "t2.micro"
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
# resource "aws_instance" "UdacityM4" {
#   ami           = "ami-0b5eea76982371e91"
#   count         = "2"
#   instance_type = "m4.large"
#   tags = {
#     Name = "Udacity M4"
#   }
# }