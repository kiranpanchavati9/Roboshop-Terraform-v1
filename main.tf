# Create a new tag for the user
resource "digitalocean_tag" "user" {
  name = "user"
}

# Create a new Droplet in nyc3 with the user tag
resource "digitalocean_droplet" "user" {
  image  = "ubuntu-22-04-x64"
  name   = "web-1"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.user.name]
}

## FIREWALL RULE ALLOW ALL FOR THE USER

resource "digitalocean_firewall" "user" {
  name = "allow-all-roboshop"

  tags = [digitalocean_tag.user.name]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "0-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "0-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}
