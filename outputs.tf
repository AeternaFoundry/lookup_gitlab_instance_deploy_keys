output "instance_deploy_keys_lookup_id" {
  description = "Map of id values across all instance_deploy_keys_lookup, keyed the same as var.instance_deploy_keys_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_instance_deploy_keys.instance_deploy_keys_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "instance_deploy_keys_lookup_deploy_keys" {
  description = "Map of deploy_keys values across all instance_deploy_keys_lookup, keyed the same as var.instance_deploy_keys_lookup except keys with no deploy_keys are omitted"
  value       = { for k, v in data.gitlab_instance_deploy_keys.instance_deploy_keys_lookup : k => v.deploy_keys if v.deploy_keys != null && length(v.deploy_keys) > 0 }
}
output "instance_deploy_keys_lookup_public" {
  description = "Map of public values across all instance_deploy_keys_lookup, keyed the same as var.instance_deploy_keys_lookup except keys with no public are omitted"
  value       = { for k, v in data.gitlab_instance_deploy_keys.instance_deploy_keys_lookup : k => v.public if v.public != null }
}

