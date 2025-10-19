provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
        Env= "Dev"
    }
  }
}

module "finance_bucket"{
    count=1
    source="./s3-module"
    tags = {
      Team="finance"
      
    }
}