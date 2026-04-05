# Create a new tag for the user
resource "digitalocean_tag" "user" {
  name = "user"
}

# Create a new Droplet in nyc3 with the user tag
resource "digitalocean_droplet" "user" {
  image  = "ubuntu-22-04-x64"
  name   = "user"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.user.name]
}

## FIREWALL RULE ALLOW ALL FOR THE USER

resource "digitalocean_firewall" "allow-all-roboshop-user" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.user.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}





# Create a new tag for the shipping
resource "digitalocean_tag" "shipping" {
  name = "shipping"
}

# Create a new Droplet in nyc3 with the shipping tag
resource "digitalocean_droplet" "shipping" {
  image  = "ubuntu-22-04-x64"
  name   = "shipping"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.shipping.name]
}

## FIREWALL RULE ALLOW ALL FOR THE shipping

resource "digitalocean_firewall" "allow-all-roboshop-shipping" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.shipping.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}



# Create a new tag for the redis
resource "digitalocean_tag" "redis" {
  name = "redis"
}

# Create a new Droplet in nyc3 with the redis tag
resource "digitalocean_droplet" "redis" {
  image  = "ubuntu-22-04-x64"
  name   = "redis"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.redis.name]
}

## FIREWALL RULE ALLOW ALL FOR THE redis

resource "digitalocean_firewall" "allow-all-roboshop-redis" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.redis.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}





# Create a new tag for the rabbitmq
resource "digitalocean_tag" "rabbitmq" {
  name = "rabbitmq"
}

# Create a new Droplet in nyc3 with the rabbitmq tag
resource "digitalocean_droplet" "rabbitmq" {
  image  = "ubuntu-22-04-x64"
  name   = "rabbitmq"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.rabbitmq.name]
}

## FIREWALL RULE ALLOW ALL FOR THE rabbitmq

resource "digitalocean_firewall" "allow-all-roboshop-rabbitmq" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.rabbitmq.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}




# Create a new tag for the payment
resource "digitalocean_tag" "payment" {
  name = "payment"
}

# Create a new Droplet in nyc3 with the payment tag
resource "digitalocean_droplet" "payment" {
  image  = "ubuntu-22-04-x64"
  name   = "payment"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.payment.name]
}

## FIREWALL RULE ALLOW ALL FOR THE payment

resource "digitalocean_firewall" "allow-all-roboshop-payment" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.payment.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}




# Create a new tag for the mysql
resource "digitalocean_tag" "mysql" {
  name = "mysql"
}

# Create a new Droplet in nyc3 with the mysql tag
resource "digitalocean_droplet" "mysql" {
  image  = "ubuntu-22-04-x64"
  name   = "mysql"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.mysql.name]
}

## FIREWALL RULE ALLOW ALL FOR THE mysql

resource "digitalocean_firewall" "allow-all-roboshop-mysql" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.mysql.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}



# Create a new tag for the mongodb
resource "digitalocean_tag" "mongodb" {
  name = "mongodb"
}

# Create a new Droplet in nyc3 with the mongodb tag
resource "digitalocean_droplet" "mongodb" {
  image  = "ubuntu-22-04-x64"
  name   = "mongodb"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.mongodb.name]
}

## FIREWALL RULE ALLOW ALL FOR THE mongodb

resource "digitalocean_firewall" "allow-all-roboshop-mongodb" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.mongodb.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}



# Create a new tag for the frontend
resource "digitalocean_tag" "frontend" {
  name = "frontend"
}

# Create a new Droplet in nyc3 with the frontend tag
resource "digitalocean_droplet" "frontend" {
  image  = "ubuntu-22-04-x64"
  name   = "frontend"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.frontend.name]
}

## FIREWALL RULE ALLOW ALL FOR THE frontend

resource "digitalocean_firewall" "allow-all-roboshop-frontend" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.frontend.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}




# Create a new tag for the dispatch
resource "digitalocean_tag" "dispatch" {
  name = "dispatch"
}

# Create a new Droplet in nyc3 with the dispatch tag
resource "digitalocean_droplet" "dispatch" {
  image  = "ubuntu-22-04-x64"
  name   = "dispatch"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.dispatch.name]
}

## FIREWALL RULE ALLOW ALL FOR THE dispatch

resource "digitalocean_firewall" "allow-all-roboshop-dispatch" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.dispatch.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}




# Create a new tag for the catalogue
resource "digitalocean_tag" "catalogue" {
  name = "catalogue"
}

# Create a new Droplet in nyc3 with the catalogue tag
resource "digitalocean_droplet" "catalogue" {
  image  = "ubuntu-22-04-x64"
  name   = "catalogue"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.catalogue.name]
}

## FIREWALL RULE ALLOW ALL FOR THE catalogue

resource "digitalocean_firewall" "allow-all-roboshop-catalogue" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.catalogue.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}



# Create a new tag for the cart
resource "digitalocean_tag" "cart" {
  name = "cart"
}

# Create a new Droplet in nyc3 with the cart tag
resource "digitalocean_droplet" "cart" {
  image  = "ubuntu-22-04-x64"
  name   = "cart"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  tags   = [digitalocean_tag.cart.name]
}

## FIREWALL RULE ALLOW ALL FOR THE cart

resource "digitalocean_firewall" "allow-all-roboshop-cart" {
  name = "allow-all-roboshop"

  droplet_ids = [digitalocean_droplet.cart.id]

  inbound_rule {
    protocol         = "tcp"
    port_range       = "1-65535"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
}




