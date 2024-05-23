variable "identifier" {

}
variable "db_subnet_group_name" {

}
#variable "read_replica_identifier" {

#}
variable "allocated_storage" {

}
variable "max_allocated_storage" {

}
#variable "read_replica_max_allocated_storage" {

#}
variable "storage_type" {

}
#variable "read_replica_storage_type" {

#}
variable "engine" {

}
variable "engine_version" {

}
variable "instance_class" {

}
#variable "read_replica_instance_class" {

#}
variable "rds_db_name" {

}
variable "username" {

}
variable "password" {

}
variable "parameter_group_name" {

}
variable "multi_az" {

}
#variable "read_replica_multi_az" {

#}
#variable "final_snapshot_identifier" {

#}
variable "skip_final_snapshot" {

}
#variable "copy_tags_to_snapshot" {

#}
variable "availability_zone" {

}
variable "publicly_accessible" {

}
#variable "read_replica_vpc_security_group_ids" {

#}
#variable "backup_retention_period" {

#}
variable "kms_key_id" {

}
#variable "read_replica_kms_key_id" {

#}
variable "monitoring_role_arn" {

}
variable "enabled_cloudwatch_logs_exports" {

}
variable "env" {

}

###################### Variables for VPC ##################################

variable "vpc_cidr"{

}

variable "private_subnet_cidr"{

}

variable "public_subnet_cidr"{

}

variable "igw_name" {

}

variable "vpc_name" {

}

data aws_availability_zones azs {

}

############################### Site to Site VPN #########################################

variable "ip_address_azure_vpn_gtw" {

}

variable "azure_vnet_subnet_cidr_block" {

}
