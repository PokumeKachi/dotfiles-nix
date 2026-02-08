set shell := ["bash", "-cu"]

_default:
    @just --choose

night:
    if pgrep gammastep > /dev/null; then
    pkill gammastep
    else
    gammastep -P -O "${COLOR:-3000}" & disown
    fi

battery:
    while true; do
    clear
    capacity=$(cat /sys/class/power_supply/BAT0/capacity)
    if [ "$capacity" -le 30 ]; then
    notify-send -u critical "Low Battery" "Hibernating in 30 seconds, save your work!"
    sleep 30
    systemctl hibernate
    break
    else
    echo "$capacity"
    fi
    sleep 120
    done

cloud:
    MOUNT_POINT="/cloud"
    MOUNT_ARGS="-t nfs -o async,soft,timeo=5,retrans=1,vers=4 ka.myvnc.com:/cloud"
    if mountpoint -q "$MOUNT_POINT"; then
    pkexec umount "$MOUNT_POINT" -f && notify-send "SSD" "Unmounted successfully" || notify-send "SSD" "Can't unmount"
    else
    pkexec mount $MOUNT_ARGS $MOUNT_POINT && notify-send "SSD" "Mounted successfully" || notify-send "SSD" "Can't mount"
    fi

music:
    clear
    easyeffects & disown
    mpv --ytdl-format="bestaudio/best" --cache=yes --cache-secs=5 \
    https://www.youtube.com/playlist?list=PLFen3AmxoGIhg_wPkrGE3h-v19pAIkgRW \
    --shuffle --no-video --no-sub

chill:
    clear
    easyeffects & disown
    mpv --ytdl-format="bestaudio/best" --cache=yes --cache-secs=5 \
    https://www.youtube.com/watch?v=ZUIT_rQIR5M --no-video --no-sub

nvim-sync:
    DIR="$HOME/.config/nvim"
    while [ -L "$DIR" ]; do
    TARGET=$(readlink "$DIR")
    if [[ "$TARGET" != /* ]]; then
    DIR="$(cd "$(dirname "$DIR")" && cd "$(dirname "$TARGET")" && pwd)/$(basename "$TARGET")"
    else
    DIR="$TARGET"
    fi
    done
    REAL_DIR="$(cd "$DIR" && pwd)"
    rm -rf /cloud/nvim
    cp -r "$REAL_DIR" /cloud/nvim
    chmod -R u+rw /cloud/nvim
    chown -R $USER:$(id -gn) /cloud/nvim
    ssh ka.myvnc.com 'rm -rf ~/.config/nvim && cp -r /cloud/nvim ~/.config/nvim && su -c '\''rm -rf /root/.config/nvim && cp -r /cloud/nvim /root/.config/nvim'\'''

cache-clear:
    sudo rm -rf /home/kachi/.cache
    mkdir /home/kachi/.cache
    sudo rm -rf /root/.cache
    sudo mkdir /root/.cache
    sudo rm -rf /var/cache
    sudo mkdir /var/cache
    sudo journalctl --vacuum-time=1d

camel-to-python:
    find mydir -depth \( -type f -o -type d \) -exec bash -c '
    for f; do
    dir=$(dirname "$f")
    base=$(basename "$f")
    new=$(echo "$base" | sed -E "s/([a-z0-9])([A-Z])/\1-\2/g" | tr A-Z a-z)
    [[ "$base" != "$new" ]] && mv "$f" "$dir/$new"
    done' _ {} +

_202020:
    while true; do
    swaylock
    sleep 1200
    done

idle:
    just 202020 & disown
    just battery & disown

chat:
    read -p "Server IP: " server
    read -p "Port: " port
    read -p "Username: " name
    ( while read -r line; do echo "[ $name ]: $line"; done ) | ncat "$server" "$port"

todo:
    taskwarrior-tui --taskdata .task
