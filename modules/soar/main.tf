# Create a new tag
resource "digitalocean_tag" "soar_prod_tag" {
  name = [var.tag_name]
}

# Create a new Droplet in nyc3 with the foobar tag
resource "digitalocean_droplet" "soar-prod" {
  image  = "ubuntu-22-04-x64"
  name   = "fortisoar-prod"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags = [var.tag_name]
}