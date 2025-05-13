terraform {
  required_providers {                       ## this is just for  we keeping state file to central file that provider.tf file syntax ##  
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
  backend "s3" {
    bucket = "roboshop" here s3 created bucket name
    key = "for_each-demo" means we opened for_each folder in git bash
    region = "us-east-1"
    dynamodb_table = "roboshop" means dynamodb_table name 
  }
}

provider "aws" {
  region = "us-east-1"    
}

## if you provider.tf file like this ##
1. for example DEV related 10 instances created but again creating 10 PROD instances total 20 instances creating ##
2.but using this provider.tf file dev instances created after creating 10 prod related instances dev instances will be destroy ##
3. ## because we kept terraform.statetf file in central location ###
4. if state is local location here 20 instances creates dev 10 and prod 10  