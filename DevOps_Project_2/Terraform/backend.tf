terraform {
  backend "s3" {
    bucket = "euran-kamal1"
    key = "server_name/statefile"
    region = "us-east-1"
  }
}  
