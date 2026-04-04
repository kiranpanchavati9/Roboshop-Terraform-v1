resource "digitalocean_tag" "splunk_dev_tag" {
  name = "splunk-dev"
}

resource "digitalocean_droplet" "splunk_dev" {
  name   = "splunk-dev"
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-22-04-x64"
  region = "nyc3"
  tags = [digitalocean_tag.splunk_dev_tag.name]
}