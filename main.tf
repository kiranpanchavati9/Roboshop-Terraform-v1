module "splunk" {
  source = "./modules/splunk"
  tag_name = "splunk-dev"
}

module "nginx" {
  source = "./modules/nginx"
}

module "firewall" {
  source   = "./modules/firewall"
  tag_name = "soar_prod_tag"
}

module "soar" {
  source = "./modules/soar"
  tag_name = "soar_prod_tag"
}

module "nginx" {
  source = "./modules/nginx"
}

module "firewall" {
  source   = "./modules/firewall"
  tag_name = "splunk-dev"
}