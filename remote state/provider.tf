###terraform {
  required_providers {    ## this is just for  we keeping state file to central file ##  
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta1"
    }
  }
  backend "s3" {      ##### create s3 bucket on aws console #####
    bucket = "roboshop" here s3 created bucket name
    key = "for_each-demo" means we opened for_each folder in git bash
    region = "us-east-1"
    dynamodb_table = "roboshop" means dynamodb_table name 
  }   #### create dynamodb_table on aws console ########
}

provider "aws" {
  region = "us-east-1"    
} 

### we keeping fils in central repo using s3 and dynamodb so engineer 1 successfully creates but engineer 2 gets error like already exists ###