FLAKE_PATH := "."
HOST_FILE := "/etc/nix-flake-hostname"
BUILD_PASS_PHRASE := "woler xong pyq gze"

_default:
    @just --choose

_set_host:
    @h=$(cat {{HOST_FILE}} 2>/dev/null || echo ""); \
    if [ -z "$h" ] || ! nix flake show --json . | jq -e --arg h "$h" 'has($h)' >/dev/null; then \
        read -r -p "no compatible output name found, please input one: " h; \
        echo "$h" | sudo tee {{HOST_FILE}} >/dev/null; \
    fi

_get_host: _set_host
    @cat /etc/nix-flake-hostname

_prebuild:
    # git add .
    # nix-fast-build --flake {{FLAKE_PATH}}#$(just _get_host).config.system.build.toplevel


test: _prebuild
    nh os test {{FLAKE_PATH}}#$(just _get_host)

trace: _prebuild
    nh os test {{FLAKE_PATH}}#$(just _get_host) --show-trace

switch: _prebuild
    @echo "you must restart after this"
    @read -p $'\033[1;31m[type \033[1;32m'"{{BUILD_PASS_PHRASE}}"$'\033[1;31m to confirm]\033[0m ' ans; \
    [ "$$ans" = "{{BUILD_PASS_PHRASE}}" ] || exit 0
    nh os switch {{FLAKE_PATH}}#$(just _get_host)
    sudo -p "enter root password to update kexec kernel: " bash -c 'kexec -l /boot/EFI/nixos/*-bzImage.efi \
        --initrd=$(ls -v /boot/EFI/nixos/*-initrd-linux-*.efi | tail -n1) \
        --command-line="$(cat /proc/cmdline)"'

update: _prebuild
    nix flake update
    nh os switch --update {{FLAKE_PATH}}#$(just _get_host)

clean:
    sudo nix-collect-garbage -d
    sudo nix-store --optimise

generations:
	sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

hardware-configuration:
    mkdir -p "src/$(just _get_host)/os"
    @echo 'enter password...'
    @sudo nixos-generate-config --show-hardware-config | tee "src/$(just _get_host)/os/configuration.nix"

git:
    gitui

todo:
    taskwarrior-tui --taskdata .task

