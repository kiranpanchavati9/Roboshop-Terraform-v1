# Create a new tag
resource "digitalocean_tag" "soar-prod" {
  name = "soarprod"
}

# Create a new Droplet in nyc3 with the foobar tag
resource "digitalocean_droplet" "soar-prod" {
  image  = "ubuntu-22-04-x64"
  name   = "fortisoar-prod"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.soar-prod.name]
}