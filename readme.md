# Infra as Code

This repository holds the code to setup the Kubernetes infrastructure at Azure AKS by using the files at '/terraform' folder and, deploy all Frameup necessary services and dependencies by using the files at '/kubernetes'.
The main goal of this repository is to make it ease and reproducible all necessary steps to have the app up and running as fast as possible.

## Infra at Azure - AKS

### Resource Groups

The `azurerm_resource_group` resource is used to create a new resource group for the AKS cluster. The `random_pet` resources are used 
to generate random names for the resource group and the AKS cluster.

*   **Resource Group Name**: The name of the resource group is generated using the `random_pet.rg_name.id` output.
*   **Resource Group Location**: The location of the resource group is specified in the `var.resource_group_location` variable.

### Azure Kubernetes Service (AKS) Cluster

The `azurerm_kubernetes_cluster` resource is used to create a new AKS cluster. The following configuration options are used:

*   **Cluster Name**: The name of the AKS cluster is generated using the `random_pet.azurerm_kubernetes_cluster_name.id` output.
*   **DNS Prefix**: The DNS prefix for the AKS cluster is generated using the `random_pet.azurerm_kubernetes_cluster_dns_prefix.id` 
output.

### Cluster Details

The following details are configuration options for the AKS cluster:

*   **Identity Type**: The identity type for the AKS cluster is set to "SystemAssigned".
*   **Node Pool Configuration**: The default node pool configuration includes:
    *   **Name**: The name of the node pool is set to "agentpool".
    *   **VM Size**: The VM size for the node pool is set to "Standard_D2s_v3".
    *   **Node Count**: The number of nodes in the node pool is specified in the `var.node_count` variable.
*   **Linux Profile Configuration**:
    *   **Admin Username**: The admin username for the Linux profile is set to the value of the `var.username` variable.
    *   **SSH Key**: The SSH key for the Linux profile is generated using the 
`azapi_resource_action.ssh_public_key_gen.output.publicKey` output.

### Execute this repository

To execute this code, you'll need to have [terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli) or [openTofu](https://opentofu.org/docs/intro/install/) installed at you machine.
You will need to have [az cli](https://learn.microsoft.com/pt-pt/cli/azure/) configured with your Azure creadentials.

With that in mind, navigate to the 'terraform' folder and execute the following commands:

```sh
   terraform init
```

It will donwlaod and setup all elements configured at providers.tf file.
After that. execute the following command to prepare the plan:

```sh
    terraform plan -out main.tfplan
```

With this plan complete, you will be able to apply the configurations with the commands:

```sh
   terraform apply main.tfplan
```

## Service Deployment - Kubernetes

To deploy all the services at the created cluster, you just need to execute the script:

```sh
   ./deployment.sh
```

It will create all configmaps, deployment and services.

At the end of this process, you should have a cluster and services like the diagram bellow:

