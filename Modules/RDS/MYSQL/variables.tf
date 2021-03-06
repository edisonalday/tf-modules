variable "identifier" {
  default           = ""
  description       = "The name of the RDS instance, if omitted, Terraform will assign a random, unique identifier"
}

variable "engine" {
  default           = "mysql"
  description       = "The database engine to use"
}

variable "engine_version" {
  default           = "5.7.19"
  description       = "The engine version to use"
}

variable "major_engine_version" {
  default           = "5.7"
  description       = "Specifies the major version of the engine that this option group should be associated with"
}

variable "family" {
  default           = "mysql5.7"
  description       = "The family of the DB parameter group"
}

variable "instance_class" {
  default           = ""
  description       = "The instance type of the RDS instance"
}

variable "allocated_storage" {
  default           = ""
  description       = "The allocated storage in gigabytes"
}

variable "storage_encrypted" {
  default           = "true"
  description       = "Specifies whether the DB instance is encrypted"
}

variable "username" {
  default           = ""
  description       = "Username for the database"
}

variable "password" {
  default           = ""
  description       = "Password for the database"
}

variable "port" {
  default           = "3306"
  description       = "The port on which the DB accepts connections"
}

variable "maintenance_window" {
  default           = "Mon:00:00-Mon:03:00"
  description       = "The window to perform maintenance in"
}

variable "backup_window" {
  default           = "03:00-06:00"
  description       = "The daily time range (in UTC) during which automated backups are created if they are enabled. Must not overlap with maintenance_window"
}

variable "backup_retention_period" {
  default           = "0"
  description       = "The days to retain backups for"
}

# optional
variable "vpc_security_group_ids" {
  description       = "Subnet ID where the isntance has to be created"
  type              = "list"
  default           = []
}

variable "subnet_ids" {
  description       = "A list of subnet IDS"
  type              = "list"
  default     	    = []
}

variable "publicly_accessible" {
  default           = "false"
  description       = "Bool to control if instance is publicly accessible"
}

variable "multi_az" {
  default           = "false"
  description       = "Specifies if the RDS instance is multi-AZ"
}

variable "final_snapshot_identifier" {
  default           = "mysql-snapshot"
  description       = "Database snapshot identifier"
}

variable "deletion_protection" {
  default           = "false"
  description       = "The database can't be deleted when this value is set to true"
}

variable "allow_major_version_upgrade" {
  default           = "false"
  description       = "Indicates that major version upgrades are allowed"
}

variable "auto_minor_version_upgrade" {
  default           = "true"
  description       = "Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window"
}

variable "iam_database_authentication_enabled" {
  default           = "true"
  description       = "Specifies whether or mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled"
}

variable "option_name" {
  default           = "MARIADB_AUDIT_PLUGIN"
  description       = "Option name"
}

variable "option_server_audit_events" {
  default           = "CONNECT"
  description       = ""
}

variable "server_audit_file_rotations" {
  default           = "37"
  description       = ""
}

variable "parameter_join_buffer_size" {
  default           = "1000"
}

variable "parameter_log_output" {
  default           = "FILE"
}

variable "parameter_log_bin_trust_function_creators" {
  default           = "1"
}

variable "parameter_log_queries_not_using_indexes" {
  default           = "0"
}

variable "parameter_long_query_time" {
  default           = "2"
}

variable "parameter_max_allowed_packet" {
  default           = "1024194304"
}

variable "parameter_max_connections" {
  default           = "50"
}

variable "parameter_slow_query_log" {
  default           = "1"
}

variable "parameter_sql_mode" {
  default           = "NO_AUTO_CREATE_USER,STRICT_ALL_TABLES"
}

variable "parameter_time_zone" {
  default           = "Asia/Singapore"
}

// tags
variable "tag_name" {
  description       = "Tag name to be assigned to the instance"
  default           = ""
}

variable "tag_company" {
  description       = "Tag company name to be assigned to the instance"
  default           = ""
}

