.PHONY: up down rebuild swag test migrate-up migrate-down install-deps logs logs-app logs-db hash-password generate-migrations

# Запуск приложения
run:
	docker compose up -d --build

# Остановка приложения
stop:
	docker compose down

# Пересборка и перезапуск
rerun:
	docker compose down
	docker compose build
	docker compose up -d

# Просмотр логов всех контейнеров
logs:
	docker compose logs -f

# Просмотр логов только приложения
logs-local-message-broker:
	docker compose logs -f local-message-broker

# Просмотр логов базы данных
logs-local-postgres-db:
	docker compose logs -f local-postgres-db

# Просмотр логов кэша
logs-local-redis-server:
	docker compose logs -f local-redis-server

# Просмотр логов документальной базы данных
logs-local-mongo-db:
	docker compose logs -f local-mongo-db

# Просмотр логов Mongo Express
logs-local-mongo-express:
	docker compose logs -f local-mongo-express
