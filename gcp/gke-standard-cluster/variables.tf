#
# GCP GKE Standard Cluster Variables
#

# Terraform Project Variables
variable "tf_project_id" {

    description = "Terraform Project ID"
    type        = string
    default     = ""

}

#
# GKE Cluster Variables
#

variable "gke_standard_cluster_name" {

    description = "GKE Standard Cluster Name"
    type        = string
    default     = "gke-standard-eck"

}

variable "gke_standard_cluster_region" {

    description = "GKE Standard Cluster Region"
    type        = string
    default     = "europe-west2"

}

variable "gke_standard_cluster_network" {

    description = "GKE Standard Cluster Network"
    type        = string
    default     = "default"

}

variable "gke_standard_cluster_node_count" {

    description = "GKE Standard Cluster Node Count"
    type        = number
    default     = 1

}

#
# GKE Node Variables
#

variable "gke_standard_cluster_node_pool_details" {

    description = "GKE Standard Cluster Node Pool Details"
    type        = map(object({
        name                = string
        machine_type        = string
        disk_size_gb        = number
        disk_type           = string
        min_count           = number
        max_count           = number
        initial_count       = number
        autoscaling_enabled = bool
        taint               = list(map(string))
    }))
    default     = {
        "data" = {
            name                = "data"
            machine_type        = "n1-standard-2"
            disk_size_gb        = 100
            disk_type           = "pd-standard"
            min_count           = 1
            max_count           = 6
            initial_count       = 2
            autoscaling_enabled = true
            taint               = [{}]

        }

    }

}
