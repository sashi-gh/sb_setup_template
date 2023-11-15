

# Create secret for starburst license file
kubectl create secret generic starburstdata --from-file starburstdata.license


helm repo add --username=<username> --password=<password> starburstdata https://harbor.starburstdata.net/chartrepo/starburstdata

helm repo update

# if you want to see the values file
helm show values --version 423.0.0 starburstdata/starburst-enterprise > SEP-example.yaml

helm pull --version <version> starburstdata/starburst-enterprise

# Install/upgrade Starburst
helm upgrade starburst starburstdata/starburst-enterprise --install --version 423.0.0 --values registry-access.yaml --values sep-cluster-setup.yaml --values sep-catalogs.yaml

# Uninstall starburst
helm uninstall starburst


# Some useful kubectl commands
kubectl get pods
kubectl describe pods <pod-name>
kubectl logs <pod-name> -c <container-name> -f
kubectl exec <pod-name> -c coordinator -it -- /bin/bash
kubectl get svc
kubectl describe svc <service name>