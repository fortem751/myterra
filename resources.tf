resource "google_compute_network" "dev_network" {
  name = "devnet"
  auto_create_subnetworks = true
}

resource "aws_vpc" "my_test_vpc" {
  cidr_block  = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tag {
      Name = "terraform vpc example"
  }
}

