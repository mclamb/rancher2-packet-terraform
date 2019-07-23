terraform {
	required_version = ">= 0.12.2"
}

provider "rancher2" {
	api_url    = "${var.rancher2_api_url}"
	access_key = "${var.rancher2_access_key}"
	secret_key = "${var.rancher2_secret_key}"
}

resource "rancher2_cluster" "packet-custom" {
	name = "packet-custom"
	description = "Custom cluster on Packet"
	rke_config {
		kubernetes_version = "v1.15.0-rancher1-1"
		network {
			plugin = "canal"
		}
		nodes = [
			{
				address = "${vars.controller_ip}"
				role = ["controlplane", "etcd"]
				user = "admin"
			},
			{
				address = "${vars.worker1_ip}"
				role = ["worker"]
				user = "admin"
			},
			{
				address = "${vars.worker2_ip}"
				role = ["worker"]
				user = "admin"
			},
			{
				address = "${vars.worker3_ip}"
				role = ["worker"]
				user = "admin"
			}
		]
	}
}

output "Rancher_Custom_Cluster_Info" {
	value = "\n\nID = ${rancher2_cluster.packet-custom.id}\n\nDriver = ${rancher2_cluster.packet-custom.driver}\n\nNode Command = ${rancher2_cluster.packet-custom.cluster_registration_token[0].node_command}"
}
