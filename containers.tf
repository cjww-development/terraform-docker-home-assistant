resource "docker_container" "home_assistant" {
  name  = var.home_assistant_container_name
  image = docker_image.home_assistant.latest

  restart = var.restart_policy

  ports {
    internal = 8123
    external = 8123
    ip       = "0.0.0.0"
    protocol = "tcp"
  }

  volumes {
    container_path = "/config/"
    host_path      = docker_volume.home_assistant.mountpoint
    read_only      = false
  }

  volumes {
    container_path = "/etc/localtime"
    host_path      = var.local_time_path
    read_only      = true
  }

  env = []
}
