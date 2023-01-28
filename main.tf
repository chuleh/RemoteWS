module "vpc" {
  source = "git@github.com:chuleh/tf-aws-vpc-module.git"

  name = "remotews"
  cidr = "192.168.0.0/16"
  public_subnets = ["192.168.1.0/24"]
  azs = ["us-east-1a"]
  map_public_ip_on_launch = true
}

module "ec2" {
  source = "git@github.com:chuleh/tf-aws-ec2-module.git"
  ami = "ami-0ff8a91507f77f867"
  public_subnets = ["module.vpc.public_subnets"]
  create_eip = true
}