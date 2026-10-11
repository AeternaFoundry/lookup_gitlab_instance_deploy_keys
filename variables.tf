variable "instance_deploy_keys_lookup" {
  description = <<EOT
Map of instance_deploy_keys_lookup, attributes below
Optional:
    - public
EOT

  type = map(object({
    public = optional(bool)
  }))
}

