# Provider Block
provider "aws" {
  region  = "us-east-1"
  shared_credentials_file = "/home/dariuskp/.aws/credentials"
  profile                 = "customprofile"
}
