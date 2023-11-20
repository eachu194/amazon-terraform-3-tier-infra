terraform {
  backend "s3" {
    bucket = "tf-state-bucket-7743"
    key    = "state/terraform.tfstates"
    region = "us-east-1"
    workspace_key_prefix = "env"
  }
}
