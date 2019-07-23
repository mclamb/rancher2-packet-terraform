variable "rancher2_api_url" {
  description = "Rancher2 API URL"
  default     = "<REPLACE_ME_RANCHER_API_URL>"
}

variable "rancher2_access_key" {
  description = "Rancher2 Access Key"
  default     = "<REPLACE_ME_RANCHER_ACCESS_KEY>"
}

variable "rancher2_secret_key" {
  description = "Rancher2 Secret Key"
  default     = "<REPLACE_ME_RANCHER_SECRET_KEY>"
}

variable "rancher2_bearer_token" {
  description = "Rancher2 Bearer Token"
  default     = "<REPLACE_ME_RANCHER_BEARER_TOKEN>"
}

variable "controller_ip" {
  description = "IP address of controller node"
  default     = "<REPLACE_ME_CONTROLLER_NODE_IP>"
}

variable "worker1_ip" {
  description = "IP address of worker node"
  default     = "<REPLACE_ME_WORKER1_NODE_IP>"
}

variable "worker2_ip" {
  description = "IP address of worker node"
  default     = "<REPLACE_ME_WORKER2_NODE_IP>"
}

variable "worker3_ip" {
  description = "IP address of worker node"
  default     = "<REPLACE_ME_WORKER3_NODE_IP>"
}
