module "app_server1" {
  source = "./module"
  ami    = var.app_server1
  name   = var.name1
}


module "app_server2" {
  source = "./module"
  ami    = var.app_server2
  name   = var.name2
  providers = {
    aws = aws.west
  }
}
