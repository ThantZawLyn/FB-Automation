helm install fbs-database \
  --set postgresqlPassword=yah7WUy1Oi8G,postgresqlDatabase=fbs,postgresqlUsername=fbs,service.type=LoadBalancer \
    bitnami/postgresql
