#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi="nvim"
alias vim="nvim"
PS1='[\u@\h \W]\$ '

alias hyprcfg="micro ~/.config/hypr/hyprland.conf"

alias dwmcfg="cd ~/dwm/dwm/; $EDITOR config.h"
alias gitpush="read -p 'Commit name: ' commitname; git add .; git commit -m \"\$commitname\"; git push"
alias startvm="sudo systemctl start libvirtd.socket; sudo virsh start win10"
alias fixres="xrandr --output HDMI-0 --auto"
alias fixinput='setxkbmap -layout latam; xinput set-prop "Corsair Corsair Gaming HARPOON RGB Mouse" "libinput Accel Profile Enabled" 0 1 0; xinput set-prop "Corsair Corsair Gaming HARPOON RGB Mouse" "libinput Accel Speed" -0.75'
alias copy='xclip -i -selection clipboard' 
alias play='mpv $(xclip -o -selection clipboard)'
alias ssh="TERM=xterm-256color ssh"

export "MICRO_TRUECOLOR=1"
