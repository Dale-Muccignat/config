typeset -U PATH path
path=("$HOME/.cargo/bin" "$HOME/.local/bin" "$path[@]")
export PATH
source ~/.profile
