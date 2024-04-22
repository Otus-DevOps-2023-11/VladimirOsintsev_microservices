# VladimirOsintsev_microservices
VladimirOsintsev microservices repos
ДЗ №20

    Установлен minikube
    Созданы манифесты деплойментов и сервисов
    Сконфигурированы конфиги доступа к кластеру
    Создан неймспейс dev

Тесты

minikube start
kubectl get nodes
kubectl apply -f ./kubernetes/reddit
minikube dashboard
kubectl apply -f ./kubernetes/reddit/dev-namespace.yml
kubectl apply -f ./kubernetes/reddit/ -n dev

