data "docker_registry_image" "home_assistant" {
  name = var.home_assistant_image_name
}

resource "docker_image" "home_assistant" {
  name          = data.docker_registry_image.home_assistant.name
  pull_triggers = [data.docker_registry_image.home_assistant.sha256_digest]
  keep_locally  = true
}
