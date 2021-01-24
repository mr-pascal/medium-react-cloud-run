# Medium React Cloud Run


### Google Cloud Platform

1. Install GCloud SDK for CLI
1. Cloud Build needs to be enabled
1. Cloud Run has to be enabled

### Start React app

All commands need to be run inside `./my-app/` folder:

Install dependencies
```sh
yarn install
```

Start local development server (Chrome tab is automatically opened on http://localhost:3000/)
```sh
yarn start
```
### Local Docker
Build Docker image
```sh
docker build -t react-nginx .
```


Start Docker container

```sh
docker run -d -e HOST=localhost -e PORT=8080 -p 8080:8080 react-nginx-cloud-run
```

### Build & Deploy to GCP
```sh
./deploy.sh
```

### Cleanup GCP 
```sh
./cleanup.sh
```