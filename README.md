# VladimirOsintsev_microservices
VladimirOsintsev microservices repos
ДЗ #18. Логирование Docker-контейнеров

Основная часть

    сервис EFK собран с помощью docker compose
    обновлён Dockerfile и fluent.conf
    собран образ fluentd
    для сбора логов с сервисов приложения прописан logging драйвер в docker-compose.yml
    для сервиса post в конфиге fluentd прописан фильтр для сбора структурированных логов в формате json
    для сервиса ui прописаны фильтры для сбора неструктурированных логов
    поднят zipkin для ознакомления с метриками

Дополнительная часть

    с помощью https://grokdebugger.com/ удалось написать правильный паттерн для сбора неструктурированного лога из допзадания.
