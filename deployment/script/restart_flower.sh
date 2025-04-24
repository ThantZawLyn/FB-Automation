kubectl --kubeconfig ./do/fbs-kubeconfig.yaml delete -f ./kubernetes/flower-controller.yaml
kubectl --kubeconfig ./do/fbs-kubeconfig.yaml create -f ./kubernetes/flower-controller.yaml
