# Ethereum proxy

Proxy service for wrapping an external Ethereum endpoint like Infura and still use it as part of an internal load balancer (like AWS ELB).

## Building

`./docker-build.sh`

## Running

```bash
export ETHEREUM_ENDPOINT=https://mainnet.infura.io/v3/$PROJECT_ID
docker-compose up -d

# healtcheck
curl -L -s http://localhost/status.json
```

## Testing

```bash
export ETHEREUM_ENDPOINT=https://mainnet.infura.io/v3/$PROJECT_ID
./docker-build.sh
./docker-test.sh
```

## Deploying to AWS ECS

```bash
ecs-cli configure --cluster ethereum --region ca-central-1
ecs-cli compose up
```
