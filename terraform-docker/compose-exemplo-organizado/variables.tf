### Global Configuration
 
 variable "docker_network" {
   default = "wordpress_net"
 }
 
 variable "restart_mode" {
   default = "always"
 }
 
 #### variables DB
 
 variable "container_db_name" {
   default = "db"
 }
 
 variable "image_docker_db" {
   default = "mysql:5.7"
 }
 
 variable "db_port" {
   default = "3306"
 }
 
 ### variables Wordpress
 
 variable "wordpress_port" {
   default = "8080"
 }