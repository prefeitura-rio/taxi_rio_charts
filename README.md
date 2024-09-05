# Taxi Rio Charts

Helm charts para subir o Prefect agent.

## Usage

Install [Infisical](https://infisical.com/docs/cli/overview):

```sh
helm plugin install https://github.com/jkroepke/helm-secrets --version v4.6.1
```

Install agent:

```sh
helm install prefect-agent . -f values.yaml --namespace prefect
```

Delete agent:

```sh
helm delete --namespace prefect prefect-agent
```
