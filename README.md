# Ethereum proxy

## Building

`./docker-build.sh`

## Running

```bash
export ETHEREUM_ENDPOINT=https://mainnet.infura.io/v3/$PROJECT_ID
docker-compose up
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
