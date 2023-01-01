# dotfiles

My configuration for ArchMirage on i3.

## Install

```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo ".dotfiles" >> .gitignore
git clone --bare https://github.com/Dale-Muccignat/config $HOME/.dotfiles
config checkout
```

## Dependents

```
sudo pacman -S zsh sshfs picom nitrogen fzf xorg-xset rofi ranger gvim xautolock flameshot dunst blueman zathura kitty
yay -S nerd-fonts-complete oh-my-zsh-git auto-cpufreq i3lock-fancy-rapid-git sway-overfocus autotiling i3-scratchpad-git pacseek bumblee-status-git
```

## Post config

Change shell to zsh
```
chsh --shell /bin/zsh
```
Change wallpaper
```
nitrogen /path/to/wallpaper
```
power optimize
```
sudo systemctl enable --now auto-cpufreq.service
```
Add gitignore
```
