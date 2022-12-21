# Common
project             = "sheytech-assignment"
createdby           = "sheytech"
editedby            = "kojitech"

# General 
aws_region = "us-east-1"

# S3
#s3_bucket_names       = ["sheytech-states"]
s3_bucket_name        = "sheytech-eks-project-state-store"
s3_versioning         = "Enabled"
enable_lifecycle_rule = false

db_table_name = "sheytech-eks-project-state-locking"
billing_mode  = "PAY_PER_REQUEST"
hash_key      = "LockID"
attr_name     = "LockID"
attr_type     = "S"