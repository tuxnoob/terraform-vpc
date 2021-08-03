provider "aws" {
    region = "ap-southeast-1"
    profile = "default"
}
module "vpc" {
  source          = "./vpc"
  vpc_cidr        = "10.0.0.0/16"
  public_cidrs    = ["10.0.1.0/24"]
  private_cidrs   = ["10.0.2.0/24"]
}
