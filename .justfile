FLAKE_PATH := "."
HOST_NAME := "#kachi"
BUILD_PASS_PHRASE := "woler xong pyq gze"

_default:
    @just --choose

test:
    nh os test {{FLAKE_PATH}}{{HOST_NAME}}

trace:
    nh os test {{FLAKE_PATH}}{{HOST_NAME}} --show-trace

switch:
    echo "you must restart after this"
    @read -p $'\033[1;31m[type \033[1;32m'"{{BUILD_PASS_PHRASE}}"$'\033[1;31m to confirm]\033[0m ' ans; \
    [ "$$ans" = "{{BUILD_PASS_PHRASE}}" ] || exit 0
    # git add .
    nh os switch {{FLAKE_PATH}}{{HOST_NAME}}

update:
    nix flake update
    # nixos-rebuild switch --flake '{{FLAKE_PATH}}?submodules=1{{HOST_NAME}}' --upgrade

clean:
    sudo nix-collect-garbage -d
    sudo nix-store --optimise

generations:
	sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

git:
    gitui

todo:
    taskwarrior-tui --taskdata .task

