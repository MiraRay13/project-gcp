region  =   "europe-west-3"
#private_subnets =   ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24" ]
#public_subnets  =   ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
#cidr    =   "10.0.0.0/16"
name    =   "paris"
zone = "europe-west-3"

instance_name = "wordpress-paris"

database_version = "MySQL_8_0"

tier = "db-f1-micro"

database_name = "gcp-db-paris"

vpc_name = "gcp-vpc-paris"

project_name = "dev-gcp-wrdp"

user_password = "abcdefg"

username = "world-paris"

host = "devproject.com"

lb_name = "gcp-lb-paris"

firewall = "gcp-firewall-paris"

target_pool_name = "gcp-target-paris"

asg_name = "gcp-asg-tokyo"

instance_manager = "gcp-instance-paris"

template_name = "gcp-template-paris"

template_machine_type = "e2-medium"

db_password = "12345678"