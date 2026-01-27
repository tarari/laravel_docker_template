
### Instructions ###

1. Clone the repository
```
 git clone https://github.com/tarari/laravel_docker_template.git your_project
```
2. change to your project and create laravel project inside
```
cd <your_project>
composer create-project laravel/laravel src
```

3. Adapt your docker-compose.yml to your environment
4. Execute to build containers:
```
docker compose up -d --build
```
5. Execute your composer under your app container
```
docker exec -it app composer install
docker exec -it app php artisan migrate
```


