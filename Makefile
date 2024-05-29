.PHONY: build
build:
	go build

.PHONY: nix
nix:
	nix-build -A gohello

.PHONY: shell
shell:
	nix-shell

.PHONY: nixpin
nixpin:
	#nix-shell -p npins --run "npins init"
	nix-shell --run "npins update"

.PHONY: nixfmt
nixfmt:
	nix-shell --run "nixfmt *.nix"

