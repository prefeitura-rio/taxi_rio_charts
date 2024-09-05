namespace := --namespace prefect
chart := $(namespace) prefect-agent
args := $(chart) . --values values.yaml --set secrets.ghcr.dockerConfigJson=${DOCKER_CONFIG_JSON} --set secrets.prefect.authToml=${AUTH_TOML} --set secrets.infisical.address=${INFISICAL_ADDRESS} --set secrets.infisical.token=${INFISICAL_TOKEN}
infisical := infisical run --env=dev --path=/taxi-rio --

install:
	@helm install $(args)

infisical-install:
	@$(infisical) install

delete:
	@helm delete $(chart)

delete-force:
	@kubectl delete all --all $(namespace)
	@kubectl delete secrets --all $(namespace)

debug:
	@helm install $(args) --dry-run --debug

.PHONY: install infisical-install delete delete-force
