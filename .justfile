FLAKE_PATH := "."
HOST_FILE := "/etc/nix-flake-hostname"
BUILD_PASS_PHRASE := "woler xong pyq gze"

_default:
    @just --choose

# _set_host:
#     if [ ! -f {{HOST_FILE}} ]; then \
#         read -p "hostname: " h; \
#         echo "$$h" | sudo tee {{HOST_FILE}} >/dev/null; \
#     fi

_set_host:
    @[ -f {{HOST_FILE}} ] || { \
        read -r -p "hostname: " h; \
        echo "$h" | sudo tee {{HOST_FILE}} >/dev/null; \
    }

_get_host: _set_host
    @cat /etc/nix-flake-hostname

test:
    nh os test {{FLAKE_PATH}}#$(just _get_host);

# trace:
#     nh os test {{FLAKE_PATH}}{{HOST_NAME}} --show-trace
#
# switch:
#     echo "you must restart after this"
#     @read -p $'\033[1;31m[type \033[1;32m'"{{BUILD_PASS_PHRASE}}"$'\033[1;31m to confirm]\033[0m ' ans; \
#     [ "$$ans" = "{{BUILD_PASS_PHRASE}}" ] || exit 0
#     # git add .
#     nh os switch {{FLAKE_PATH}}{{HOST_NAME}}

update:
    nix flake update

clean:
    sudo nix-collect-garbage -d
    sudo nix-store --optimise

generations:
	sudo nix-env --list-generations --profile /nix/var/nix/profiles/system

git:
    gitui

todo:
    taskwarrior-tui --taskdata .task

