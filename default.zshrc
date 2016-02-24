#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#################################################
#                                               #
#             Alias personalizzati              #
#                                               #
#################################################
alias upg='sudo pacman -Syu'
alias cow='cower -uv'
alias l='ls'
alias la='ls -la'
alias clean='sudo pacman -R $(pacman -Qdtq)'
alias powersave='sudo cpupower frequency-set -g powersave'
alias performance='sudo cpupower frequency-set -g performance'
alias status='cpupower frequency-info'
alias q='exit'
alias monta='udevil mount /dev/sdc1'
alias smonta='udevil umount /dev/sdc1'
alias monta-mtp='pcmanfm -d &'
alias u='packer -Syu'

# SCRIPT USB
removable () { lsblk --raw | awk '$3==1{print $1}'; }
usb () {
        i=1; while read; do echo "$(( i++ )) $REPLY"; done <<< $(removable)
        read cm
        [[ "$cm" -lt 1 ]] && return 1
        [[ "$cm" -ge "$i" ]] && return 1
        udevil mount "/dev/$(removable | head -n $cm | tail -n 1)"
}
