# Taxi Rio Charts

Helm charts para subir o Prefect agent.

## Usage

Install [Infisical CLI](https://infisical.com/docs/cli/overview) and login use the <https://infisical.dados.rio> domain:

```sh
infisical login
```

Inside this repo, run the command below anb choose the "Escritório de Dados" organization:

```sh
infisical init
```

Install [Helm](https://helm.sh/docs/intro/install/) and then install the agent:

```sh
infisical run --env=dev --path=/taxi-rio \
    -- helm install prefect-agent . -f values.yaml \
    --namespace prefect \
    --set secrets.ghcr.dockerConfigJson=$DOCKER_CONFIG_JSON \
    --set secrets.prefect.authToml=$AUTH_TOML \
    --set secrets.infisical.address=$INFISICAL_ADDRESS \
    --set secrets.infisical.token=$INFISICAL_TOKEN \
    --dry-run
```

To delete the agent, run:

```sh
helm delete --namespace prefect prefect-agent
```
