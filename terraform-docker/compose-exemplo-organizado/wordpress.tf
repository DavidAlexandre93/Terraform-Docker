# create wordpress container
 resource "docker_container" "wordpress" {
   name         = "wordpress"
   image        = "wordpress:latest"
   restart      = "always"
   network_mode = "wordpress_net"
 
   env = [
     "WORDPRESS_DB_HOST=db:3306",
     "WORDPRESS_DB_PASSWORD=wordpress",
   ]
 
   ports  {
     internal = 80
     external =  var.wordpress_port
   }
   depends_on = [docker_container.db]
 }