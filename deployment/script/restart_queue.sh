kubectl --kubeconfig ./do/fbs-kubeconfig.yaml delete -f ./kubernetes/rabbitmq-controller.yaml
kubectl --kubeconfig ./do/fbs-kubeconfig.yaml create -f ./kubernetes/rabbitmq-controller.yaml
