module "vpc" {
  source = "github.com/chuleh/tf-aws-vpc-module.git"

  name                    = "remotews"
  cidr                    = "192.168.0.0/16"
  public_subnets          = ["192.168.1.0/24"]
  azs                     = ["us-east-1a"]
  map_public_ip_on_launch = true
}

module "ec2" {
  source = "github.com/chuleh/tf-aws-ec2-module.git"

  ami        = "ami-0ff8a91507f77f867"
  subnet_ids = module.vpc.public_subnets
  create_eip = true
}

module "sg" {
  source = "github.com/chuleh/tf-aws-sg-module.git"

  name                = "remotews-sg"
  vpc_id              = module.vpc.vpc_id
  create              = true
  create_ingress_rule = false

}
