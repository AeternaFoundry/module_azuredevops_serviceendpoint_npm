output "serviceendpoint_npms_id" {
  description = "Map of id values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.id }
}
output "serviceendpoint_npms_access_token" {
  description = "Map of access_token values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.access_token }
  sensitive   = true
}
output "serviceendpoint_npms_authorization" {
  description = "Map of authorization values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.authorization }
}
output "serviceendpoint_npms_description" {
  description = "Map of description values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.description }
}
output "serviceendpoint_npms_project_id" {
  description = "Map of project_id values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.project_id }
}
output "serviceendpoint_npms_service_endpoint_name" {
  description = "Map of service_endpoint_name values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.service_endpoint_name }
}
output "serviceendpoint_npms_url" {
  description = "Map of url values across all serviceendpoint_npms, keyed the same as var.serviceendpoint_npms"
  value       = { for k, v in azuredevops_serviceendpoint_npm.serviceendpoint_npms : k => v.url }
}

