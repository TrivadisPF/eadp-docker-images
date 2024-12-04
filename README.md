# Customer Docker Images


## Build and Push to Local Registry

```bash
export DOCKER_REGISTRY=dataplatform-registry:5020
```

```bash
./build-and-push.sh
```

## Build and Push to Harbor

```bash
export DOCKER_REGISTRY=harbor.eadp-harbor.svc.cluster.local
```

```bash
docker login $DOCKER_REGISTRY -u eadp
```

```bash
./build-and-push.sh
```

