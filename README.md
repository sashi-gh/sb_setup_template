

# Installation Steps

Install tools

1. Install AWS Cli
2. Install eksctl
3. Install Helm
4. Install Kubectl
5.

https://docs.starburst.io/latest/k8s/installation.html

The following checklist describes the initial installation process:

1. Gather repository credentials for the Helm chart repository and the Docker
registry provided by Starburst Support.
2. Create the `registry-access.yaml` file to override the default,
empty values.
3. Create your correctly-sized Kubernetes cluster.
4. Create a node group with the right permissions and network config
5. Ensure your Helm/`kubectl` configuration points at the correct cluster
with `kubectl cluster-info`.
6. Add your license file.
7. Have the database ready for Insights, BIAC, Data Products


Main link for configuring Starburst via helm charts

https://docs.starburst.io/latest/k8s/sep-configuration.html#registry-access-yaml