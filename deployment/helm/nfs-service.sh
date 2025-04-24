#helm repo add stable https://kubernetes-charts.storage.googleapis.com/
#helm repo update
helm install nfs-server stable/nfs-server-provisioner --set persistence.enabled=true,persistence.storageClass=do-block-storage,persistence.size=50Gi
