module "splunk" {
  source = "./modules/splunk"
}

module "nginx" {
  source = "./modules/nginx"
}

module "firewall" {
  source = "./modules/firewall"
  tag_name = "splunk-dev"
}