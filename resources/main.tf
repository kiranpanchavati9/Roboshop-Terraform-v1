resource "digitalocean_droplet" "foobar" {
  name   = "example"
  size   = "s-1vcpu-1gb"
  image  = "ubuntu-22-04-x64"
  region = "nyc3"
}