terraform {
  backend "s3" {
    bucket = "euran-kamal"
    key = "server_name/statefile"
    region = "ap-northeast-1"
  }
}  
