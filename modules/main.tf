module "splunk" {
  source = "/root/Roboshop-Terraform-v1/splunk"
}

module "nginx" {
  source = "/root/Roboshop-Terraform-v1/nginx"
}

module "firewall" {
  source = "/root/Roboshop-Terraform-v1/firewall"
  tag_name = "splunk-dev"
}