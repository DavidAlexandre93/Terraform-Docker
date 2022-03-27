output "network_id" {
   value = docker_network.wordpress_net.id
}

output "network_name" {
   value = docker_network.wordpress_net.name
}