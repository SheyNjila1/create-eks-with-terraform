locals {
    tags = {
        Project             = var.project
        CreatedBy           = var.createdby
        EditedBy            = var.editedby
        CreatedOn           = timestamp()
        #Environment         = terraform.workspace

    }
}

module "aws_s3_bucket" {
    source = "../modules/sheytech-s3-backend"
    s3_bucket_name          = var.s3_bucket_name
    enable_lifecycle_rule   = var.enable_lifecycle_rule
    s3_versioning           = var.s3_versioning
    tags                    = merge({ "ResourceName" = var.s3_bucket_name }, local.tags)
    
}

module "aws_dynamo_db" {
    source = "../modules/sheytech-dynamodb"
    db_table_name           = var.db_table_name
    billing_mode            = var.billing_mode
    hash_key                = var.hash_key
    attr_name               = var.attr_name
    attr_type               = var.attr_type
    tags                    = merge({ "ResourceName" = var.db_table_name }, local.tags) 
    
}
