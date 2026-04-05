# 1. Define the tag as a resource
resource "digitalocean_tag" "splunk_vm_tag" {
  name = var.tag_name
}

# Create a new Droplet in nyc3 with the foobar tag
resource "digitalocean_droplet" "splunk_prod_vm" {
  image  = "ubuntu-18-04-x64"
  name   = "splunk_prod_vm"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags = [digitalocean_tag.splunk_vm_tag.name]
}