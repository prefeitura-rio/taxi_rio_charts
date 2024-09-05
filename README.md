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
make infisical-install
```

To delete the agent, run:

```sh
make delete
```
