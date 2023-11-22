

# Installation Steps

### Install tools

1. Install AWS Cli
2. Install eksctl
3. Install Helm
4. Install Kubectl
5.

https://docs.starburst.io/latest/k8s/installation.html

### Checklist 

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


### Using password file authentication - 


https://docs.starburst.io/latest/security/password-file.html

Create a password file as specified here - 
https://docs.starburst.io/latest/security/password-file.html#creating-a-password-file

Create a secret from the password file 
```bash
kubectl create secret generic  passworddb --from-file path/to/password.db 
```

Update your values fiel to use 'file' based authenticator
```yaml
  etcFiles:
    properties:
      password-authenticator.properties: |
        password-authenticator.name=file
        file.password-file=secretRef:passworddb:password.db
        file.refresh-period=5s
        file.auth-token-cache.max-size=1000         
```
