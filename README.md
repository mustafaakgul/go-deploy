# Version: 1.0.0
docker build -t go-deploy-app .
docker images | grep go-deploy-app

# Version: 1.1.0
docker build -t go-deploy-app-multi-stage .
docker run -it -p 8080:8080 go-deploy-app-multi-stage
