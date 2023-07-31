#
# GCP GKE Standard Cluster Configuration
#

data "google_project" "project" {}

resource "google_container_cluster" "gke_standard_cluster" {

    name                        = (var.tf_project_id !="" ? "${var.gke_standard_cluster_name}-${var.tf_project_id}": "${var.gke_standard_cluster_name}")
    location                    = var.gke_standard_cluster_region
    initial_node_count          = var.gke_standard_cluster_node_count
    remove_default_node_pool    = true
    network                     = var.gke_standard_cluster_network

    addons_config {

        horizontal_pod_autoscaling {

            disabled = false

        }

    }

    master_auth {

        client_certificate_config {

            issue_client_certificate = false

        }

    }

    workload_identity_config {

        workload_pool = "${data.google_project.project.project_id}.svc.id.goog"

    }

    timeouts {

        create = "60m"
        update = "60m"

    }

}
