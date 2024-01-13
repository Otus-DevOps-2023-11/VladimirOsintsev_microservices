# VladimirOsintsev_microservices
VladimirOsintsev microservices repos
ДЗ #17. Введение в мониторинг. Модели и принципы работы систем мониторинга

Выполнены все основные пункты ДЗ.
Основное задание

    Создан Docker хост в Yandex Cloud, локальное окружение настроено на работу с ним;
    Prometheus запущен из образа prom/prometheus;
    Изучены метрики по умолчанию;
    Изучен раздел Targets (цели) и формат собираемых метрик, доступных по адресу host:port/metrics;
    Создан кастомный Docker образ Prometheus на основе собственного файла конфигурации prometheus.yml;
    Создан docker-compose.yml файл для поднятия Prometheus совместно с микросервисами ui, post, comment, mongo_db;
    Изучен функционал Prometheus на основе новых целей и Endpoint'ов наших микросервисов;
    Добавлен сбор метрик Docker хоста при помощи Node exporter:
        Добавлен новый сервис в docker-compose.yml;
        Добавлен новый Job в prometheus.yml;
    Изучено изменение динамики нагрузки хоста на графике при повышении загруженности CPU

Собранные образы запушены на DockerHub

https://hub.docker.com/repositories/wowan
