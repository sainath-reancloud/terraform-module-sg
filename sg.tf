
resource "aws_security_group" "security_group" {
  name = "${var.name}"
  description = "${var.description}"
  vpc_id = "${var.vpc_id}"

  tags {
      Name = "${var.name}"
  }

  ingress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
}
