helm install jenkins \
  --set jenkinsUsername=fbs_user,jenkinsPassword=tagdesign2088,service.type=ClusterIP \
    bitnami/jenkins
