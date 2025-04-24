kubectl --kubeconfig ./do/fbs-kubeconfig.yaml delete -f ./kubernetes/producer-controller.yaml
kubectl --kubeconfig ./do/fbs-kubeconfig.yaml create -f ./kubernetes/producer-controller.yaml
