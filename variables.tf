variable "docker_host" {
  type        = string
  description = "The host where docker resides"
}

variable "home_assistant_volume_name" {
  type        = string
  description = "The name of the docker volume to be used by the Home Assistant container"
}

variable "home_assistant_image_name" {
  type        = string
  description = "The name of the Home Assistant docker image that should be pulled"
}

variable "home_assistant_container_name" {
  type        = string
  description = "The name of the Home Assistant container to be created"
}

variable "local_time_path" {
  type        = string
  description = "The path to the systems localtime"
  default     = "/etc/localtime"
}

variable "restart_policy" {
  type        = string
  description = "The restart policy for the container. Must be one of 'no', 'on-failure', 'always', 'unless-stopped'. Defaults to no."
  validation {
    condition = contains(
      [
        "no",
        "on-failure",
        "always",
        "unless-stopped"
      ],
      var.restart_policy
    )
    error_message = "The provided value did not match a valid value."
  }
}
