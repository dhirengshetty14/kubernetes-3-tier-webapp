terraform {
  backend "s3" {
    bucket = "terraform-s3-backend"
    key    = "backend-locking"
    region = "eu-west-1"
    use_lockfile = true
  }
}