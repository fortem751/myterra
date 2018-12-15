resource "google_compute_network" "dev_network" {
  name = "devnet"
  auto_create_subnetworks = false
}

resource "aws_vpc" "my_test_vpc" {
  cidr_block  = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "terraform vpc example"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block = "${cidrsubnet(aws_vpc.my_test_vpc.cidr_block, 3, 1)}"
  vpc_id = "${aws_vpc.my_test_vpc.id}"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet2" {
  cidr_block = "${cidrsubnet(aws_vpc.my_test_vpc.cidr_block, 2, 2)}"
  vpc_id = "${aws_vpc.my_test_vpc.id}"
  availability_zone = "us-east-1a"
}

resource "aws_security_group" "securitygroupsubnet" {
  vpc_id = "${aws_vpc.my_test_vpc.id}"

  ingress {
    cidr_blocks = [
      "${aws_vpc.my_test_vpc.cidr_block}"
    ]
    from_port = 80
    to_port = 80
    protocol = "tcp"
  }
}

