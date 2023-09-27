module "route_example" {
  source = "./route53-module"
  zone_domain = "datasalaryman.com"
  record_file = "${path.module}/routes.json"
}