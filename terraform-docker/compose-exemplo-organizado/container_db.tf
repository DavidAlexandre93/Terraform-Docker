resource "docker_volume" "db_data" {}
 
 resource "docker_container" "db" {
   name         = var.container_db_name
   image        = var.image_docker_db
   restart      = var.restart_mode
   network_mode = var.docker_network
 
   env = [
     "MYSQL_ROOT_PASSWORD=wordpress",
     "MYSQL_PASSWORD=wordpress",
     "MYSQL_USER=wordpress",
     "MYSQL_DATABASE=wordpress",
   ]
 
   mounts  {
     type   = "volume"
     target = "/var/lib/mysql"
     source = "db_data"
   }
 
   ports  {
     internal = 3306
     external = var.db_port
   }
    depends_on = [docker_network.wordpress_net]
 }