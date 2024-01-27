.PHONY: generate
generate:
	rm -rf backstageEntities/
	jsonnet \
		-S -c -m backstageEntities \
		-J generator/vendor \
		generator/main.jsonnet

.PHONY: docs
docs:
	rm -rf backstageEntities/docs/
	jsonnet \
		-J generator/vendor \
		-S -c -m backstageEntities/docs \
		-e '(import "github.com/jsonnet-libs/docsonnet/doc-util/main.libsonnet").render(import "backstageEntities/main.libsonnet")'

.PHONY: fmt
fmt:
	@find . -path './.git' -prune -o -name 'vendor' -prune -o -name '*.libsonnet' -print -o -name '*.jsonnet' -print | \
		xargs -n 1 -- jsonnetfmt --no-use-implicit-plus -i
