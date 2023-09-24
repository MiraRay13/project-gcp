region  =   "eu-west-2"
private_subnets =   ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
public_subnets  =   ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
cidr    =   "10.0.0.0/16"
name    =   "london"
tags    =   {
    Terraform =    "true"
    Environment =   "dev"
    Name   =   "London"
}