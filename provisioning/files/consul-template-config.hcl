consul {
address = "localhost:8500"
  retry {
  enabled = true
  attempts = 12
  backoff = "250ms"
  }
}

template {
source      = "/etc/consul-template/domains.ctmpl"
destination = "/root/domains"
perms = 0600
}
template {
source      = "/etc/consul-template/whitelist.ctmpl"
destination = "/root/whitelist"
perms = 0600
}