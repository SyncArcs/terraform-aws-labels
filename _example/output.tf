output "id" {
  value       = module.labels.id
  description = "Disambiguated ID."
}

output "tags" {
  value       = module.labels.tags
  description = "Normalized Tag map."
}

output "name" {
  value       = module.labels.name
  description = "Normalized Tag map."
}

output "managedby" {
  value       = module.labels.managedby
  description = "Normalized Tag map."
}