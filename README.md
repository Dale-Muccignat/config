# dotfiles

My configuration for ArchMirage on i3.

## Install

```
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare https://github.com/Dale-Muccignat/config $HOME/.dotfiles
config checkout
```

## Dependents

```
sudo pacman -S zsh sshfs picom nitrogen fzf xorg-xset rofi ranger neovim xautolock flameshot dunst blueman zathura kitty
yay -S nerd-fonts-complete oh-my-zsh-git auto-cpufreq i3lock-fancy-rapid-git sway-overfocus autotiling i3-scratchpad-git pacseek bumblebee-status-git vim-plug python-pulsectl
```

## Explination of Dependents

**zsh**
: zsh is an alternatice to bash which is the defaul terminal scripting language. It allows some fancy plugins for using the terminal and easy aliasing for shortcut commands like 'wallpaper' to change the wallpaper.

**sshfs**
: This allows the mounting of remote filesystems, this is what I use to host my remote files for work on my local computer.

**picom**
: Picom is a compositor for the X window server. This allows pretty animations and smooth transision/scrolling on windows. Without this artifacts such as screen tearing is common. Also allows fancy transparent/blur for windows.

**nitrogen**
: Nitrogen is what I use to set the wallpaper automatically on boot through i3.

**fzf**
: fzf allows the 'fuzzy' search of various things. Esspecially from the terminal being able to search previously used commands from the terminal with 'crtl+r'.
**xorg-xset**
: This is used for managing input devices, mostly useful when rotating screens or with a tablet. Is called as 'xset'.

**rofi**
: This is the menu environment which is used to launch applications through 'super+d' or games through 'super+g'

**ranger**
: vim like file exploration through the terminal.

**neovim**
: vim but a bit nicer

**xautolock**
: Used to set the lockscreen and sleep for i3. Currently have a bug on some computers where sleep isn't really working...

**flameshot**
: Screenshotting utility through the printscreen key.

**dunst**
: notification daemon (background process) which displays notifcations when programs send them.

**blueman**
: Handles bluetooth with a gui.

**zathura**
: vim like pdf viewer.

**kitty**
: Fancy terminal with good customisation options. Currently doesn't play well with range displaying preview images...

**nerd-fonts-complete**
: Fonts and icons.

**oh-my-zsh-git**
: Fancy zsh shell with plugins and stuff.

**auto-cpufreq**
: Throttles cpu frequency according to usage to save power.

**i3lock-fancy-rapid-git**
: fancy version nof i3lock which takes a screenshot of your screen and blurs it as the lockscreen.

**sway-overfocus**
: Allows you to tab through tabs within a window. You can combine windows into a tab layout by changing a window to tab with 'super+w' then moving other windows into that tab window. Cycle through them with 'tab'

**autotiling**
: Changes the default tiling strategy to a fractal pattern.

**i3-scratchpad-git**
: Allows the use of hidden windows, I use this extensively for all useful programs that only need to be accessed a couple of times for a short period. See the i3 config file for a list of shortcuts.

**pacseek**
: tui search of the package database.

**bumblebee-status-git**
: Status bar which has some nice modules. Not the prettiest bar but it feels very functional.

**vim-plug**
: Plugin manager for vim that allows alot of fancy stuff.

**python-pulsectl**
: dependency for bumblebee-status volumne control.

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
git config --global core.excludesfile ~/.gitignore
```
