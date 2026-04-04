# 1. Define the tag as a resource
resource "digitalocean_tag" "splunk_tag" {
  name = var.tag_name
}

resource "digitalocean_firewall" "splunk_dev" {
  name = "splunk-allow-ports-dev"

  tags = [digitalocean_tag.splunk_tag.name]

  # -------- INBOUND RULES --------

  # SSH
  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # Web
  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # Splunk UI
  inbound_rule {
    protocol         = "tcp"
    port_range       = "8000"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # Splunk Management
  inbound_rule {
    protocol         = "tcp"
    port_range       = "8089"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # Splunk Forwarder
  inbound_rule {
    protocol         = "tcp"
    port_range       = "9997"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # Ping
  inbound_rule {
    protocol         = "icmp"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  # -------- OUTBOUND RULES --------

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}