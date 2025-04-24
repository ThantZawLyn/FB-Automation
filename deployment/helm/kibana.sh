helm install kibana \
  --set resources.limits.cpu=1000m,resources.limits.memory=2Gi,replicas=1 \
  elastic/kibana
