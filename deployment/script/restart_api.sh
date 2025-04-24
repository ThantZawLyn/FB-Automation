kubectl --kubeconfig ./do/fbs-kubeconfig.yaml delete -f ./kubernetes/api-controller.yaml
kubectl --kubeconfig ./do/fbs-kubeconfig.yaml create -f ./kubernetes/api-controller.yaml
