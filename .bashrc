
# if not running interactively,dont do anything
[[ $- != *i* ]] && return 
PS1='[\u \W]$ '

#Define Editor
export EDITOR=nvim

# ---------------
#  ALIASES
# ---------------
alias pdf='zathura'
alias c='clear'
alias v='$EDITOR'
alias vim='$EDITOR'
alias wifi='nmtui'
alias shutdown='systemctl poweroff'
alias rw='~/dotfiles/waybar/reload.sh'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias dotfiles="/usr/bin/git --git-dir=$HOME/Documents/dotfiles --work-tree=$HOME/dotfiles"
# -----------------
# EDIT CONFIG FILES
# -----------------
alias confb='$EDITOR ~/dotfiles/.bashrc'

#######################################################
# SPECIAL FUNCTIONS
#######################################################
# Extracts any archive(s) (if unp isn't installed)
extract() {
	for archive in "$@"; do
		if [ -f "$archive" ]; then
			case $archive in
			*.tar.bz2) tar xvjf $archive ;;
			*.tar.gz) tar xvzf $archive ;;
			*.bz2) bunzip2 $archive ;;
			*.rar) rar x $archive ;;
			*.gz) gunzip $archive ;;
			*.tar) tar xvf $archive ;;
			*.tbz2) tar xvjf $archive ;;
			*.tgz) tar xvzf $archive ;;
			*.zip) unzip $archive ;;
			*.Z) uncompress $archive ;;
			*.7z) 7z x $archive ;;
			*) echo "don't know how to extract '$archive'..." ;;
			esac
		else
			echo "'$archive' is not a valid file!"
		fi
	done
}


function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Set up zoxide
eval "$(zoxide init bash)"

