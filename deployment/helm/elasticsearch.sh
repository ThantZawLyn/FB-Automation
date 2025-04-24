helm install elasticsearch \
  --set replicas=2 \
  elastic/elasticsearch

#helm install elasticsearch elastic/elasticsearch
#
#helm install elasticsearch \
#  --set resources.requests.cpu=300m,resources.requests.memory=1Gi,resources.limits.cpu=1000m,resources.limits.memory=2Gi,replicas=1 \
#  elastic/elasticsearch
