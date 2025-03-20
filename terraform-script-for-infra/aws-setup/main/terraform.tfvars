##################### RDS DB Instance Parameters ################################

  db_instance_count = 1
  region = "us-east-2"
  identifier = "dbinstance-1"   
  db_subnet_group_name = "rds-subnetgroup"        ###  postgresql-subnetgroup 
#  read_replica_identifier = "dbinstance-readreplica-1"
  allocated_storage = 20
  max_allocated_storage = 100
#  read_replica_max_allocated_storage = 100
  storage_type = ["gp2", "gp3", "io1", "io2"]
#  read_replica_storage_type = ["gp2", "gp3", "io1", "io2"]
  engine = ["mysql", "mariadb", "mssql", "postgres"]
  engine_version = ["5.7.44", "8.0.33", "8.0.35", "8.0.36", "10.4.30", "10.5.20", "10.11.6", "10.11.7", "13.00.6435.1.v1", "14.00.3421.10.v1", "15.00.4365.2.v1", "14.9", "14.10", "14.11", "14.12", "15.5", "16.1"] ### For postgresql select version = 14.9 and for MySQL select version = 5.7.44
  instance_class = ["db.t3.micro", "db.t3.small", "db.t3.medium", "db.t3.large", "db.t3.xlarge", "db.t3.2xlarge"]
#  read_replica_instance_class = ["db.t3.micro", "db.t3.small", "db.t3.medium", "db.t3.large", "db.t3.xlarge", "db.t3.2xlarge"]
  rds_db_name = "mydb"
  username = "postgres"   ### For MySQL select username as admin and For PostgreSQL select username as postgres
  password = "Admin123"          ### "Sonar123" use this password for PostgreSQL
  parameter_group_name = ["default.mysql5.7", "default.postgres14"]
  multi_az = ["false", "true"]   ### select between true or false
#  read_replica_multi_az = false   ### select between true or false
#  final_snapshot_identifier = "database-1-final-snapshot-before-deletion"   ### Here I am using it for demo and not taking final snapshot while db instance is deleted
  skip_final_snapshot = ["true", "false"]
#  copy_tags_to_snapshot = true   ### Select between true or false
  availability_zone = ["us-east-2a", "us-east-2b", "us-east-2c"]
  publicly_accessible = ["true", "false"]  #### Select between true or false
#  read_replica_vpc_security_group_ids = ["sg-038XXXXXXXXXXXXc291", "sg-a2XXXXXXca"]
#  backup_retention_period = 7   ### For Demo purpose I am not creating any db backup.
  kms_key_id = "arn:aws:kms:us-east-2:02XXXXXXXXXX6:key/2XXXXXXXX3-aXXc-4XXd-9XX4-2XXXXXXXXXXXXX7"
#  read_replica_kms_key_id = "arn:aws:kms:us-east-2:027XXXXXXX06:key/20XXXXXXf3-aXXc-4XXd-9XX4-24XXXXXXXXXX17"  ### I am not using any read replica here.
  monitoring_role_arn = "arn:aws:iam::02XXXXXXXXXXX6:role/rds-monitoring-role"
  enabled_cloudwatch_logs_exports = ["postgresql", "upgrade"]   ### ["audit", "error", "general", "slowquery"]  for MySQL

  env = ["dev", "stage", "prod"]

########################################## Parameters for VPC #############################################################

vpc_cidr = "172.19.0.0/16"
private_subnet_cidr = ["172.19.1.0/24", "172.19.2.0/24", "172.19.3.0/24"]
public_subnet_cidr = ["172.19.4.0/24", "172.19.5.0/24", "172.19.6.0/24"]
igw_name = "test-IGW"
vpc_name = "test-vpc"

########################################## Parameters for AWS Site-to-Site ################################################

ip_address_azure_vpn_gtw = "172.XXX.XX.30"                   ### Provide Public IP Address of Azure VPN Gateway

azure_vnet_subnet_cidr_block = ["10.224.0.0/12"]      ### Provide Azure VNet Subnet CIDR block  
