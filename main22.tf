resource "aws_instance" "example_server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"

  }

resource "aws_s3_bucket" "example22" {
  bucket = "shivani-test-bucket12345"

  tags = {
    Name        = "My bucket"
  }
}
