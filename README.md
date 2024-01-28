# VladimirOsintsev_microservices
VladimirOsintsev microservices repos
ДЗ #19. Введение в Kubernetes

Выполнены все основные и дополнительные пункты ДЗ.
Основное задание

    Описаны Deployment манифесты приложений comment, mongo, post, ui;
    В YC развернуты две ВМ для master и worker нод кластера Kubernetes;
    С помощью команд kubeadm init и kubeadm join развернут кластер k8s;
    Установлен сетевой плагин Calico;

wget https://projectcalico.docs.tigera.io/manifests/calico.yaml
kubectl apply -f calico.yaml
