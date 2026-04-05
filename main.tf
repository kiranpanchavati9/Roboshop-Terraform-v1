module "splunk" {
  source = "./modules/splunk"
  tag_name = "splunk-dev"
}

module "nginx" {
  source = "./modules/nginx"
}

module "firewall" {
  source   = "./modules/firewall"
    tag_name = "splunk-dev"
}