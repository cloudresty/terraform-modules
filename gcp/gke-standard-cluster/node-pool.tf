#
# GCP GKE Standard Cluster Node Pool
#

resource "google_container_node_pool" "gke_standard_cluster_node_pool" {

    for_each = var.gke_standard_cluster_node_pool_details

    name               = each.value.name
    location           = var.gke_standard_cluster_region
    cluster            = google_container_cluster.gke_standard_cluster.name
    initial_node_count = each.value.initial_count

    node_config {

        machine_type = each.value.machine_type
        disk_size_gb = each.value.disk_size_gb
        disk_type    = each.value.disk_type

        oauth_scopes = [

            "https://www.googleapis.com/auth/compute",
            "https://www.googleapis.com/auth/devstorage.read_only",
            "https://www.googleapis.com/auth/logging.write",
            "https://www.googleapis.com/auth/monitoring",

        ]

        taint       = each.value.taint

        metadata    = {

            disable-legacy-endpoints    = "true"
            labels                      = "node-pool=${each.value.name}"

        }

    }

    network_config {

        enable_private_nodes = true

    }

    autoscaling {

        min_node_count = each.value.min_count
        max_node_count = each.value.max_count

    }

    management {

        auto_repair  = true
        auto_upgrade = true

    }

    upgrade_settings {

        max_surge       = 1
        max_unavailable = 1

    }



    lifecycle {

        ignore_changes = [

            autoscaling,
            # management,
            # node_config,
            # timeouts

        ]

    }

    timeouts {

        create = "60m"
        update = "60m"

    }

    depends_on = [ google_container_cluster.gke_standard_cluster ]

}
