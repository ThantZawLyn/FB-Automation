kubectl --kubeconfig ./do/fbs-kubeconfig.yaml delete -f ./kubernetes/fbs-ingress.yaml
kubectl --kubeconfig ./do/fbs-kubeconfig.yaml create -f ./kubernetes/fbs-ingress.yaml
