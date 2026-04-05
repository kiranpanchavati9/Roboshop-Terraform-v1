# 1. Define the tag as a resource
resource "digitalocean_tag" "splunk_vm_tag" {
  name = var.tag_name
}

# Create a new Droplet in nyc3 with the foobar tag
resource "digitalocean_droplet" "splunk_prod_vm" {
  image  = "ubuntu-22-04-x64"
  name   = "splunk-prod-vm"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags = [digitalocean_tag.splunk_vm_tag.name]
}

# Create a new Droplet in nyc3 with the foobar tag
resource "digitalocean_droplet" "splunk_prod_vm" {
  image  = "ubuntu-22-04-x64"
  name   = "splunk-prod-vm-1"
  region = "blr1"
  size   = "s-1vcpu-1gb"
  tags = [digitalocean_tag.splunk_vm_tag.name]
}