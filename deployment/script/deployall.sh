# создание контроллера web api
kubectl create -f ./kubernetes/api-controller.yaml
# создание сервиса web api который является балансером и можно указвать количество реплик api
kubectl create -f ./kubernetes/api-service.yaml
# создание producer контроллере который записывает в очередь задачи
kubectl create -f ./kubernetes/producer-controller.yaml
# создание контроллера для очереди
kubectl create -f ./kubernetes/rabbitmq-controller.yaml
# создание сервиса для очереди чтобы реплицировать на несколько очередей
kubectl create -f ./kubernetes/rabbitmq-service.yaml
# система сбора скриншотов в screenshots-pvc описано создание volume - это общее хранилище
# в которое каждый вокрер сохраняет скриншоты оно линкуется к воркерам и они без него не будут работать
# Перед тем как его создать у себя в системе надо вызвать /helm/nfs-service.sh скрипт
#kubectl create -f ./kubernetes/screenshots-pvc.yaml
#kubectl create -f ./kubernetes/screenshots-controller.yaml
#kubectl create -f ./kubernetes/screenshots-service.yaml
# создание worker контроллера который берет задачи в работе
kubectl create -f ./kubernetes/worker-controller.yaml
# создание worker-subtasks контроллера который берет подзадачи в работу в отдельной очереди
#kubectl create -f ./kubernetes/worker-subtasks-controller.yaml
# -- Далее сервисы мониторинга
# создание flower контроллера для просмотра очереди
#kubectl create -f ./kubernetes/flower-controller.yaml
# создание flower сервиса чтобы просматривать очередь через web-ui
#kubectl create -f ./kubernetes/flower-service.yaml
# ingress в системе служит для связи доменов с сервисами системы - в нем прописаны пока наши tagdesign домены
# лучше заменить на ваши
#kubectl create -f ./kubernetes/fbs-ingress.yaml



