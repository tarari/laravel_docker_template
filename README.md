
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

3. Copy  .env 
```
cp .env.example .env
```
4. Adapt to your FQDN(yourdomain) in HOST tag in .env file. And consider change DB connections
```
HOST=yourdomain
```

5. Execute to build containers:
```
docker compose up -d --build
```
5. Execute migrations inside the php container
```
docker exec -it <app> php artisan migrate
docker exec -it app php artisan migrate
```
6. Edit your /etc/hosts and add a new line:
```
127.0.0.1    yourdomain
```
6. If all has gone well.... access to 
http://yourdomain
