NERDCTL_RUN := nerdctl run --rm \
	--volume "$(CURDIR):/helm-docs" \
	--user "$(shell id -u):$(shell id -g)"

HELM_DOCS_VERSION := "v1.13.1"
HELM_DOCS_IMAGE := "docker.io/jnorwood/helm-docs:$(HELM_DOCS_VERSION)"
HELM_DOCS := $(NERDCTL_RUN) $(HELM_DOCS_IMAGE)

docs:
	$(HELM_DOCS)
