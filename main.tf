resource "azuredevops_serviceendpoint_npm" "serviceendpoint_npms" {
  for_each = var.serviceendpoint_npms

  access_token          = each.value.access_token
  project_id            = each.value.project_id
  service_endpoint_name = each.value.service_endpoint_name
  url                   = each.value.url
  description           = each.value.description

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

