
## Instructions to correct use ##

1. Clone the repository
```
 git clone https://github.com/tarari/laravel_docker_template.git your_project
```
2. change to your project and install  laravel project inside with name src
```
cd <your_project>
composer create-project laravel/laravel src
```

3. Adapt your docker-compose.yml to your environment
4. Execute to build containers:
```
docker compose up -d --build
```
5. Execute migrations
```
docker exec -it <app> php artisan migrate
docker exec -it app php artisan migrate
```


