data "gitlab_instance_deploy_keys" "instance_deploy_keys_lookup" {
  for_each = var.instance_deploy_keys_lookup

  public = each.value.public
}

