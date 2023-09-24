region  =   "ap-south-1"
#private_subnets =   ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
#public_subnets  =   ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
#cidr    =   "10.0.0.0/16"
name    =   "mumbai"
zone = "ap-south-1"


instance_name = "wordpress-mumbai"

database_version = "MySQL_8_0"

tier = "db-f1-micro"

database_name = "gcp-db-mumbai"

vpc_name = "gcp-vpc-mumbai"

project_name = "dev-gcp-wrdp"

user_password = "abcdefg"

username = "world-mumbai"

host = "devproject.com"

lb_name = "gcp-lb-mumbai"

firewall = "gcp-firewall-mumbai"

target_pool_name = "gcp-target-mumbai"

asg_name = "gcp-asg-mumbai"

instance_manager = "gcp-instance-mumbai"

template_name = "gcp-template-mumbai"

template_machine_type = "e2-medium"

db_password = "12345678"
