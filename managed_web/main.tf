provider "aws" {
   region = "us-east-1"
}

module "management" {
   source = "./modules/mgmt/"
   AWS_FREE_IMAGE = "ami-08f3d892de259504d"
   AWS_DEFAULT_VPC = "vpc-8237d5ff"
}
