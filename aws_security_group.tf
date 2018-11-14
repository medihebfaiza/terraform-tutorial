resource "aws_security_group" "allow_ssh_in" {
  name        = "allow_ssh_in"
  description = "Allow inbound traffic"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_ssh_out" {
  name        = "allow_ssh_out"
  description = "Allow outbound traffic"
  vpc_id      = "${aws_vpc.main.id}"

  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}