# resource "digitalocean_tag" "splunk_tag" {
#   name = "splunk-prod"
# }
#
# resource "digitalocean_droplet" "splunk" {
#   name   = "splunk-prod"
#   size   = "s-1vcpu-1gb"
#   image  = "ubuntu-22-04-x64"
#   region = "nyc3"
#   tags = [digitalocean_tag.splunk_tag.name]
# }
#
# resource "digitalocean_firewall" "splunk" {
#   name = "splunk-prod-firewall"
#   tags = [digitalocean_tag.splunk_tag.name]
#   droplet_ids = [digitalocean_droplet.splunk.id]
#
#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "22"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }
#
#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "80"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }
#
#   inbound_rule {
#     protocol         = "tcp"
#     port_range       = "443"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }
#
#   inbound_rule {
#     protocol         = "icmp"
#     source_addresses = ["0.0.0.0/0", "::/0"]
#   }
#
#   outbound_rule {
#     protocol              = "tcp"
#     port_range            = "53"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }
#
#   outbound_rule {
#     protocol              = "udp"
#     port_range            = "53"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }
#
#   outbound_rule {
#     protocol              = "icmp"
#     destination_addresses = ["0.0.0.0/0", "::/0"]
#   }
# }
#
