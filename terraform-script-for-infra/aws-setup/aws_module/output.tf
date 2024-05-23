output "rds_postgresql_db_instance_id" {
  description = "The RDS DB Instance id"
  value       = aws_db_instance.dbinstance1.id
}

output "rds_mysql_db_instance_id" {
  description = "The RDS DB Instance id"
  value       = aws_db_instance.dbinstance2.id
}

#output "rds_read_replica_instance_id" {
#  description = "The Read Replica DB Instance id"
#  value       = aws_db_instance.read_replica.id
#}
