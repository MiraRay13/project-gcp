region  =   "europe-west2"
#private_subnets =   ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
#public_subnets  =   ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
#cidr    =   "10.0.0.0/16"
name    =   "london"
zone = "europe-west2-a"


instance_name = "wordpress-london"

database_version = "MySQL_8_0"

tier = "db-f1-micro"

database_name = "gcp-db-london"

vpc_name = "gcp-vpc-london"

user_password = "abcdefg"

username = "world-london"

host = "devproject.com"

lb_name = "gcp-lb-london"

firewall = "gcp-firewall-london"

target_pool_name = "gcp-target-london"

asg_name = "gcp-asg-london"

instance_manager = "gcp-instance-london"

template_name = "gcp-template-london"

template_machine_type = "e2-medium"

db_password = "12345678"