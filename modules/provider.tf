terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.48.0" # Constrains version updates
    }
   }
    
  # Configure the Remote Backend
 backend "s3" {
    bucket         = "statefile-newbucket" # Must be globally unique
    key            = "vpc-state/terraform.tfstate" # File path inside the bucket
    region         = "us-east-1"             # Enables concurrent execution protection
    encrypt        = true
    use_lockfile   = true                               # Encrypts the state file at rest
  }
}
# Configure the AWS Provider block
provider "aws" {
  region = "us-east-1"
}