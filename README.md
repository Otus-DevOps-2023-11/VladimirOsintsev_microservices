# VladimirOsintsev_microservices
VladimirOsintsev microservices repository

ДЗ #14. Docker образы. Микросервисы

Выполнены все основные  пункты ДЗ
Основное задание

    Созданы Dockerfile для сервисов post-py, comment, ui;
    Собраны образы для всех трех сервисов с тэгом 1.0;
    Сборка ui началась не с первого шага по той причине, что начальные шаги сборки идентичны сервису comment, которые уже ранее выполнялись и были закэшированы докером:
    Создана bridge-сеть для контейнеров под названием reddit;
    Контейнеры успешно запушены с указанием сетевых алиасов;
    Сервис доступен по адресу http://<docker-host-ip>:9292/;
 Оптимизация образов приложения

    Сервис ui пересобран с тэгом 2.0 на базе ubuntu:16.04;
    Сборка началась с первого шага, закешированных действий в данном случае нет;
    Размер образа 2.0 составил 487MB, в отличии от 1.0, который был 998MB;

Перезапуск приложения с volume

    Создан Docker volume reddit_db и подключен в контейнер с MongoDB по пути /data/db;
    После перезапуска контейнеров написанный пост остался на месте;
    Финальный набор команд такой:

docker build -t wowan/post:1.0 ./post-py
docker build -t wowan/comment:2.0 ./comment
docker build -t wowan/ui:2.0 ./ui

docker network create reddit

docker run -d --network=reddit --network-alias=post_db --network-alias=comment_db \
  -v reddit_db:/data/db \
  mongo:4
docker run -d --network=reddit --network-alias=post wowan/post:1.0
docker run -d --network=reddit --network-alias=comment wowan/comment:2.0
docker run -d --network=reddit -p 9292:9292 wowan/ui:2.0
