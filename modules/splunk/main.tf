# Create a new tag
resource "digitalocean_tag" "splunk_tag" {
  name = "splunk_tag"
}

# Create a new Droplet in nyc3 with the foobar tag
resource "digitalocean_droplet" "splunk_prod_vm" {
  image  = "ubuntu-18-04-x64"
  name   = "splunk_prod_vm"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.splunk_tag.name]
}