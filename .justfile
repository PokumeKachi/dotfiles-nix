FLAKE_PATH := "."
HOST_FILE := "/etc/nix-flake-hostname"
BUILD_PASS_PHRASE := "woler xong pyq gze"

_default:
    @just --choose

_set_host:
    @[ -f {{HOST_FILE}} ] || { \
        read -r -p "hostname: " h; \
        echo "$h" | sudo tee {{HOST_FILE}} >/dev/null; \
    }

_get_host: _set_host
    @cat /etc/nix-flake-hostname

test:
    git add .
    nh os test {{FLAKE_PATH}}#$(just _get_host)

trace:
    git add .
    nh os test {{FLAKE_PATH}}#$(just _get_host) --show-trace

switch:
    git add .
    @echo "you must restart after this"
    @read -p $'\033[1;31m[type \033[1;32m'"{{BUILD_PASS_PHRASE}}"$'\033[1;31m to confirm]\033[0m ' ans; \
    [ "$$ans" = "{{BUILD_PASS_PHRASE}}" ] || exit 0
    nh os switch {{FLAKE_PATH}}#$(just _get_host)
    @sudo -p "enter root password to update kexec kernel: " bash -c 'kexec -l /boot/EFI/nixos/*-bzImage.efi \
        --initrd=$(ls -v /boot/EFI/nixos/*-initrd-linux-*.efi | tail -n1) \
        --command-line="$(cat /proc/cmdline)"'

update:
    git add .
    nix flake update
    nh os switch --update {{FLAKE_PATH}}#$(just _get_host)

clean:
    sudo nix-collect-garbage -d
    sudo nix-store --optimise

generations:
	sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

hardware-configuration:
    @sudo nixos-generate-config --show-hardware-config | tee src/$(just _get_host)/hardware-configuration.nix

git:
    gitui

todo:
    taskwarrior-tui --taskdata .task

