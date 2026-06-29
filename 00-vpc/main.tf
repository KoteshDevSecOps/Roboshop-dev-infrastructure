module "vpc" {
    source = "git::https://github.com/KoteshDevSecOps/Roboshop-dev-infrastructure.git?ref=main"
    project = var.project 
    environment = var.environment 
    is_peering_required = false
}