# Arch Linux Development Environment

## Overview

| Category           | Application | Package      | Source                                             | Website                                                                                   | IRC                                                                        |
|--------------------|-------------|--------------|----------------------------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|
| Windows Manager    | i3          | `i3`         | [Git](https://github.com/i3/i3)                    | [i3wm.org](https://i3wm.org/)                                                             | [#i3 on chat.freenode.net](irc://chat.freenode.net/i3)                     |
| Panel              | Polybar     | `polybar`    | [Git](https://github.com/polybar/polybar)          | [polybar.github.io](https://polybar.github.io/)                                           | [#polybar on chat.freenode.net](irc://chat.freenode.net/polybar)           |
| Text Editor        | Vim         | `vim`        | [Git](https://github.com/vim/vim)                  | [vim.org](https://www.vim.org/)                                                           | [#vim on chat.freenode.net](irc://chat.freenode.net/vim)                   |
| Shell              | Zsh         | `zsh`        | [SourceForge](http://zsh.sourceforge.net/)         | [zsh.org](https://www.zsh.org/)                                                           | [#zsh on chat.freenoden.net](irc://chat.freenode.net/zsh)                  |
| File Manager       | Ranger      | `ranger`     | [Git](https://github.com/ranger/ranger)            | [ranger.github.io](https://ranger.github.io/)                                             | [#ranger on chat.freenode.net](irc://chat.freenode.net/ranger)             |
| E-Mail Client      | Mutt        | `mutt`       | [Git](https://gitlab.com/muttmua/mutt)             | [mutt.org](http://www.mutt.org/)                                                          | [#mutt on chat.freenode.net](irc://chat.freenode.net/mutt)                 |
| IRC Client         | Irssi       | `irssi`      | [Git](https://github.com/irssi/irssi)              | [irssi.org](https://irssi.org/)                                                           | [#irssi on chat.freenode.net](irc://chat.freenode.net/irssi)               |
| Browser            | Elinks      | `elinks`     | [Git](http://elinks.cz/elinks.git/)                | [elinks.or.cz](http://elinks.or.cz/)                                                      | [#elinks on chat.freenode.net](irc://chat.freenode.net/elinks)             |
| GUI Browser        | Chromium    | `chromium`   | [Git](https://chromium.googlesource.com/chromium/) | [chromium.org](https://www.chromium.org)                                                  | [#chromium on chat.freenode.net](irc://chat.freenode.net/chromium)         |
| Activity Monitor   | GoTop       | `gotop`(AUR) | [Git](https://github.com/cjbassi/gotop)            | -                                                                                         | -                                                                          |
| Terminal           | Urxvt       | `urxvt`      | [CVS](http://cvs.schmorp.de/rxvt-unicode/)         | [software.schmorpg.de/pkg/rxvt-unicode](http://software.schmorp.de/pkg/rxvt-unicode.html) | [#rxvt-unicode on chat.freenode.net](irc://chat.freenode.net/rxvt-unicode) |
| Image Viewer       | Feh         | `feh`        | [Git](https://git.finalrewind.org/feh)             | [feh.finalrewind.org](https://feh.finalrewind.org/)                                       | [#feh on irc.oftc.net](irc://irc.oftc.net/feh)                             |
| Music Player       | Cmus        | `cmus`       | [Git](https://github.com/cmus/cmus)                | [cmus.github.io](https://cmus.github.io/)                                                 | -                                                                          |
| Monitor Management | Arandr      | `arandr`     | [Git](https://gitlab.com/arandr/arandr)            | [christian.amsuess.com/tools/arandr/](https://christian.amsuess.com/tools/arandr/)        | -                                                                          |

## i3

```
ln -sf ~/.dotfiles/i3 ~/.config/i3
```

Window Theme:

| Object              | Color     |
|---------------------|-----------|
| Focus Border        | `#0088CC` |
| Focus Background    | `#0088CC` |
| Focus Text Color    | `#FFFFFF` |
| Focus Indicator     | `#DDDDDD` |
| Inactive Border     | `#333333` |
| Inactive Background | `#333333` |
| Inactive Text Color | `#888888` |
| Inactive Indicator  | `#292D2E` |
| Unfocus Border      | `#333333` |
| Unfocus Background  | `#333333` |
| Unfocus Text Color  | `#888888` |
| Unfocus Indicator   | `#292D2E` |
| Urgent Border       | `#2F343A` |
| Urgent Background   | `#900000` |
| Urgent Text         | `#FFFFFF` |
| Urgent Indicator    | `#900000` |

i3-bar Theme (Default is polybar, not i3-bar):

| Object                  | Color     |
|-------------------------|-----------|
| Bar Background          | `#333333` |
| Bar Status              | `#FFFFFF` |
| Bar Seperator           | `#08C08C` |
| Bar Focus Border        | `#4C7899` |
| Bar Focus Background    | `#285577` |
| Bar Focus Text Color    | `#FFFFFF` |
| Bar Active Border       | `#333333` |
| Bar Active Background   | `#5F676A` |
| Bar Active Text Color   | `#FFFFFF` |
| Bar Inactive Border     | `#333333` |
| Bar Inactive Background | `#222222` |
| Bar Inactive Text Color | `#888888` |
| Bar Urgent Border       | `#2F343A` |
| Bar Urgent Background   | `#900000` |
| Bar Urgent Text Color   | `#FFFFFF` |
| Bar Binding Border      | `#2F343A` |
| Bar Binding Background  | `#900000` |
| Bar Binding Text Color  | `#FFFFFF` |

Workspaces:

| Order | Name | Description                                               | Assigned Programs                                                                                                     |
|-------|------|-----------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|
| 1     | 1:  | General usage                                             | -                                                                                                                     |
| 2     | 2:  | Browser specific                                          | `.Chromium`                                                                                                           |
| 3     | 3:  | Software development                                      | `.Phpstorm`,`.jetbrains-studio`,`.jetbrains-phpstorm`,`.jetbrains-pycharm`,`.jetbrains-pycharm`,`.jetbrains-webstorm` |
| 4     | 4:  | Terminal windows                                          | `.Terminator`,`.URxvt`                                                                                                |
| 5     | 5:  | Visual things                                             | `.Photoshop.exe`                                                                                                      |
| 6     | 6:  | Out of Jobs. Like chat, watching movie, reading book etc. | `.smplayer`,`.Vlc`                                                                                                    |
| 7     | 7:  | Background music                                          | -                                                                                                                     |
| 8     | 8:  | Game                                                      | `.Steam`,`.Battle.net.exe`                                                                                            |

Window Specific Layouts:

| Window                             | Floating | Sticky | Position |
|------------------------------------|----------|--------|----------|
| `[role="pop-up"]`                  | Yes      | No     | Center   |
| `[role="Open Files"]`              | Yes      | Yes    | -        |
| `[role="File Operation Progress"]` | Yes      | Yes    | -        |
| `.Steam`                           | Yes      | No     | -        |
| `[instance="file_progress"]`       | No       | Yes    | -        |

Keyboard Actions:

| Hotkey                                            | Action                                           |
|---------------------------------------------------|--------------------------------------------------|
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>Q</kbd>     | Kill focused window                              |
| <kbd>$mod</kbd>+<kbd>Left</kbd>                   | Focus on left window                             |
| <kbd>$mod</kbd>+<kbd>Down</kbd>                   | Focus on down window                             |
| <kbd>$mod</kbd>+<kbd>Up</kbd>                     | Focus on up window                               |
| <kbd>$mod</kbd>+<kbd>Right</kbd>                  | Focus on right window                            |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>Left</kbd>  | Move focused window to left                      |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>Down</kbd>  | Move focused window to down                      |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>Up</kbd>    | Move focused window to up                        |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>Right</kbd> | Move focused window to right                     |
| <kbd>$mod</kbd>+<kbd>H</kbd>                      | Split horizontal orientation                     |
| <kbd>$mod</kbd>+<kbd>V</kbd>                      | Split vertical orientation                       |
| <kbd>$mod</kbd>+<kbd>F</kbd>                      | Toggle fullscreen on focused window              |
| <kbd>$mod</kbd>+<kbd>S</kbd>                      | Change current layout to stacking                |
| <kbd>$mod</kbd>+<kbd>W</kbd>                      | Change current layout to tabbed                  |
| <kbd>$mod</kbd>+<kbd>E</kbd>                      | Change current layout to split                   |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>Space</kbd> | Change floating for focused window               |
| <kbd>$mod</kbd>+<kbd>Space</kbd>                  | Change focus between tiling and floating windows |
| <kbd>$mod</kbd>+<kbd>P</kbd>                      | Focus to parent window                           |
| <kbd>$mod</kbd>+<kbd>J</kbd>                      | Focus to child window                            |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>V</kbd>     | Mute/Unmute audio capture device (microphone)    |
| <kbd>XF86AudioRaiseVolume</kbd>                   | Increase volume                                  |
| <kbd>XF86AudioLowerVolume</kbd>                   | Decrease volume                                  |
| <kbd>XF86AudioMute</kbd>                          | Toggle mute                                      |
| <kbd>XF86AudioPlay</kbd>                          | Play/Pause for player                            |
| <kbd>XF86AudioNext</kbd>                          | Go to next track for player                      |
| <kbd>XF86AudioPrev</kbd>                          | Go to prev track for player                      |
| <kbd>$mod</kbd>+<kbd>PrtScr</kbd>                 | Take a screenshot with `maim`                    |
| <kbd>$mod</kbd>+<kbd>1..8</kbd>                   | Change workspace                                 |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>1..8</kbd>  | Move container/window to another workspace       |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>C</kbd>     | Reload i3 config file                            |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>R</kbd>     | Restart i3                                       |
| <kbd>$mod</kbd>+<kbd>R</kbd>                      | Switch to `Resize` mode                          |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>E</kbd>     | Switch to `Power` mode                           |
| <kbd>$mod</kbd>+<kbd>Shift</kbd>+<kbd>-</kbd>     | Move focused window to _scratchpad_              |
| <kbd>$mod</kbd>+<kbd>-</kbd>                      | Show first window from _scratchpad_              |

Resize Mode:

| Hotkey           | Action                 |
|------------------|------------------------|
| <kbd>Left</kbd>  | Resize shrink width    |
| <kbd>Down</kbd>  | Resize grow height     |
| <kbd>Up</kbd>    | Resize shrink height   |
| <kbd>Right</kbd> | Resize grow width      |
| <kbd>Esc</kbd>   | Change mode to default |

Power Mode:

| Hotkey            | Action                    |
|-------------------|---------------------------|
| <kbd>l</kbd>      | Lock Screen               |
| <kbd>r</kbd>      | Reboot                    |
| <kbd>s</kbd>      | Poweroff                  |
| <kbd>h</kbd>      | Lock Screen and Hibernate |
| <kbd>u</kbd>      | Lock Screen and Suspend   |
| <kbd>e</kbd>      | Exit from i3              |
| <kbd>Return</kbd> | Change mode to default    |
| <kbd>Esc</kbd>    | Change mode to default    |

Startup Programs:

| Program                                              | Description                |
|------------------------------------------------------|----------------------------|
| `feh --randomize --bg-scale ~/Pictures/Wallpapers/*` | Set wallpaper              |
| `nm-applet`                                          | Network Manager Applet     |
| `compton --config ~/.config/compton.conf`            | Start compositor (compton) |
| `~/.config/polybar/polybar-launch.sh`                | Polybar                    |

## Zsh

### Extra Dependencies

- Oh-My-Zsh

### Installation

Add this line to `~/.zshenv` file or `/etc/zsh/zshenv` (*If you have system-wide permission*) file.

```
ZDOTDIR=$HOME/.config/zsh
```

Link zsh configuration and XDG Base Directory support script from dotfiles.

```
ln -sf ~/.dotfiles/zsh ~/.config/zsh
ln -sf ~/.dotfiles/eray ~/.config/eray
```

### Settings

| Setting                 | Value        |
|-------------------------|--------------|
| Theme                   | `agnoster`   |
| Case Sensitive          | No           |
| Hyphen Insensitive      | No           |
| Auto Update             | No           |
| Update Cycle            | -            |
| `ls` colors             | Enabled      |
| Auto Title              | Enabled      |
| Command Auto-Correction | Disabled     |
| Completion Waiting Dots | Disabled     |
| Untracked Files Dirty   | Disabled     |
| History Timestamp       | `yyyy-mm-dd` |

### Plugins

| Plugin             | Description                              | Repo                                                                                                                                          | Maintainer                                                                         |
|--------------------|------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
| `git`              | Aliases and functions for `git`          | [robbyrussell/oh-my-zsh/tree/master/plugins/git](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git)                           | [Stibbons](https://github.com/Stibbons), [ncanceill](https://github.com/ncanceill) |
| `archlinux`        | Aliases for `pacman`                     | [robbyrussell/oh-my-zsh/tree/master/plugins/archlinux](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/archlinux)               | [Benjamin Boudreau](https://github.com/seriousben)                                 |
| `bundler`          | Enables aliases to Bundler               | [robbyrussell/oh-my-zsh/tree/master/plugins/bundler](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/bundler)                   | [robbyrussell](https://github.com/robbyrussell)                                    |
| `composer`         | Aliases and auto-complete for `composer` | [robbyrussell/oh-my-zsh/tree/master/plugins/composer](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/composer)                 | [danielcsgomes](https://github.com/danielcsgomes)                                  |
| `common-aliases`   | Common Aliases                           | [robbyrussell/oh-my-zsh/tree/master/plugins/common-aliases](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/common-aliases)     | [Gaetan Semet](https://github.com/Stibbons)                                        |
| `docker`           | Auto-complete for `docker`               | [robbyrussell/oh-my-zsh/tree/master/plugins/docker](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/docker)                     | [Azaan](http://github.com/AeonAxan)                                                |
| `gitignore`        | [gitignore.io](http://gitignore.io) use  | [robbyrussell/oh-my-zsh/tree/master/plugins/gitignore](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/gitignore)               |                                                                                    |
| `jsontools`        | CLI tools for json data                  | [robbyrussell/oh-my-zsh/tree/master/plugins/jsontools](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/jsontools)               | [bobwilliams](https://github.com/bobwilliams)                                      |
| `npm`              | Auto-complete for `npm`                  | [robbyrussell/oh-my-zsh/tree/master/plugins/npm](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/npm)                           | [robbyrussell](https://github.com/robbyrussell)                                    |
| `pip`              | Auto-complete for `pip`                  | [robbyrussell/oh-my-zsh/tree/master/plugins/pip](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/pip)                           | [robbyrussell](https://github.com/robbyrussell)                                    |
| `python`           | Auto-complete for `python interpreter`   | [robbyrussell/oh-my-zsh/tree/master/plugins/python](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/python)                     | [Gaetan Semet](https://github.com/Stibbons)                                        |
| `copyfile`         | Copies content of a file into clipboard  | [robbyrussell/oh-my-zsh/tree/master/plugins/copyfile](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/copyfile)                 |                                                                                    |
| `encode64`         | Encode/Decode base64 strings             | [robbyrussell/oh-my-zsh/tree/master/plugins/encode64](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/encode64)                 | [fuksito](http://github.com/fuksito)                                               |
| `extract`          | Extract any archieve file                | [robbyrussell/oh-my-zsh/tree/master/plugins/extract](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/extract)                   |                                                                                    |
| `gpg-agent`        | Start gpg agent                          | [robbyrussell/oh-my-zsh/tree/master/plugins/gpg-agent](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/gpg-agent)               | [robbyrussell](https://github.com/robbyrussell)                                    |
| `last-working-dir` | Keep track of the last used dir          | [robbyrussell/oh-my-zsh/tree/master/plugins/last-working-dir](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/last-working-dir) | [op](https://github.com/op)                                                        |
| `pass`             | Auto-complete for `pass`                 | [robbyrussell/oh-my-zsh/tree/master/plugins/pass](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/pass)                         | [sanbor](https://github.com/sanbor)                                                |
| `web-search`       | Web search                               | [robbyrussell/oh-my-zsh/tree/master/plugins/web-search](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/web-search)             | [xuhdev](https://github.com/xuhdev)                                                |

### Aliases

| Alias                  | Command                                                                                                                                       | Description                                                                                                                   | Plugin?          |
|------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|------------------|
| `g`                    | `git`                                                                                                                                         |                                                                                                                               | `git`            |
| `ga`                   | `git add`                                                                                                                                     |                                                                                                                               | `git`            |
| `gaa`                  | `git add --all`                                                                                                                               |                                                                                                                               | `git`            |
| `gapa`                 | `git add --patch`                                                                                                                             |                                                                                                                               | `git`            |
| `gau`                  | `git add --update`                                                                                                                            |                                                                                                                               | `git`            |
| `gav`                  | `git add --verbose`                                                                                                                           |                                                                                                                               | `git`            |
| `gap`                  | `git apply`                                                                                                                                   |                                                                                                                               | `git`            |
| `gb`                   | `git branch`                                                                                                                                  |                                                                                                                               | `git`            |
| `gba`                  | `git branch -a`                                                                                                                               |                                                                                                                               | `git`            |
| `gbd`                  | `git branch -d`                                                                                                                               |                                                                                                                               | `git`            |
| `gbda`                 | `git branch --no-color --merged \`                                                                                                            |                                                                                                                               | `git`            |
| `gbD`                  | `git branch -D`                                                                                                                               |                                                                                                                               | `git`            |
| `gbl`                  | `git blame -b -w`                                                                                                                             |                                                                                                                               | `git`            |
| `gbnm`                 | `git branch --no-merged`                                                                                                                      |                                                                                                                               | `git`            |
| `gbr`                  | `git branch --remote`                                                                                                                         |                                                                                                                               | `git`            |
| `gbs`                  | `git bisect`                                                                                                                                  |                                                                                                                               | `git`            |
| `gbsb`                 | `git bisect bad`                                                                                                                              |                                                                                                                               | `git`            |
| `gbsg`                 | `git bisect good`                                                                                                                             |                                                                                                                               | `git`            |
| `gbsr`                 | `git bisect reset`                                                                                                                            |                                                                                                                               | `git`            |
| `gbss`                 | `git bisect start`                                                                                                                            |                                                                                                                               | `git`            |
| `gc`                   | `git commit -v`                                                                                                                               |                                                                                                                               | `git`            |
| `gc!`                  | `git commit -v --amend`                                                                                                                       |                                                                                                                               | `git`            |
| `gcn!`                 | `git commit -v --no-edit --amend`                                                                                                             |                                                                                                                               | `git`            |
| `gca`                  | `git commit -v -a`                                                                                                                            |                                                                                                                               | `git`            |
| `gca!`                 | `git commit -v -a --amend`                                                                                                                    |                                                                                                                               | `git`            |
| `gcan!`                | `git commit -v -a --no-edit --amend`                                                                                                          |                                                                                                                               | `git`            |
| `gcans!`               | `git commit -v -a -s --no-edit --amend`                                                                                                       |                                                                                                                               | `git`            |
| `gcam`                 | `git commit -a -m`                                                                                                                            |                                                                                                                               | `git`            |
| `gcsm`                 | `git commit -s -m`                                                                                                                            |                                                                                                                               | `git`            |
| `gcb`                  | `git checkout -b`                                                                                                                             |                                                                                                                               | `git`            |
| `gcf`                  | `git config --list`                                                                                                                           |                                                                                                                               | `git`            |
| `gcl`                  | `git clone --recurse-submodules`                                                                                                              |                                                                                                                               | `git`            |
| `gclean`               | `git clean -id`                                                                                                                               |                                                                                                                               | `git`            |
| `gpristine`            | `git reset --hard && git clean -dfx`                                                                                                          |                                                                                                                               | `git`            |
| `gcm`                  | `git checkout master`                                                                                                                         |                                                                                                                               | `git`            |
| `gcd`                  | `git checkout develop`                                                                                                                        |                                                                                                                               | `git`            |
| `gcmsg`                | `git commit -m`                                                                                                                               |                                                                                                                               | `git`            |
| `gco`                  | `git checkout`                                                                                                                                |                                                                                                                               | `git`            |
| `gcount`               | `git shortlog -sn`                                                                                                                            |                                                                                                                               | `git`            |
| `gcp`                  | `git cherry-pick`                                                                                                                             |                                                                                                                               | `git`            |
| `gcpa`                 | `git cherry-pick --abort`                                                                                                                     |                                                                                                                               | `git`            |
| `gcpc`                 | `git cherry-pick --continue`                                                                                                                  |                                                                                                                               | `git`            |
| `gcs`                  | `git commit -S`                                                                                                                               |                                                                                                                               | `git`            |
| `gd`                   | `git diff`                                                                                                                                    |                                                                                                                               | `git`            |
| `gdca`                 | `git diff --cached`                                                                                                                           |                                                                                                                               | `git`            |
| `gdcw`                 | `git diff --cached --word-diff`                                                                                                               |                                                                                                                               | `git`            |
| `gdct`                 | `git describe --tags $(git rev-list --tags --max-count=1)`                                                                                    |                                                                                                                               | `git`            |
| `gds`                  | `git diff --staged`                                                                                                                           |                                                                                                                               | `git`            |
| `gdt`                  | `git diff-tree --no-commit-id --name-only -r`                                                                                                 |                                                                                                                               | `git`            |
| `gdv`                  | `git diff -w $@ \`                                                                                                                            |                                                                                                                               | `git`            |
| `gdw`                  | `git diff --word-diff`                                                                                                                        |                                                                                                                               | `git`            |
| `gf`                   | `git fetch`                                                                                                                                   |                                                                                                                               | `git`            |
| `gfa`                  | `git fetch --all --prune`                                                                                                                     |                                                                                                                               | `git`            |
| `gfg`                  | `git ls-files \`                                                                                                                              |                                                                                                                               | `git`            |
| `gfo`                  | `git fetch origin`                                                                                                                            |                                                                                                                               | `git`            |
| `gg`                   | `git gui citool`                                                                                                                              |                                                                                                                               | `git`            |
| `gga`                  | `git gui citool --amend`                                                                                                                      |                                                                                                                               | `git`            |
| `ggf`                  | `git push --force origin $(current_branch)`                                                                                                   |                                                                                                                               | `git`            |
| `ggfl`                 | `git push --force-with-lease origin $(current_branch)`                                                                                        |                                                                                                                               | `git`            |
| `ggl`                  | `git pull origin $(current_branch)`                                                                                                           |                                                                                                                               | `git`            |
| `ggp`                  | `git push origin $(current_branch)`                                                                                                           |                                                                                                                               | `git`            |
| `ggpnp`                | `ggl && ggp`                                                                                                                                  |                                                                                                                               | `git`            |
| `ggpull`               | `git pull origin "$(git_current_branch)"`                                                                                                     |                                                                                                                               | `git`            |
| `ggpur`                | `ggu`                                                                                                                                         |                                                                                                                               | `git`            |
| `ggpush`               | `git push origin "$(git_current_branch)"`                                                                                                     |                                                                                                                               | `git`            |
| `ggsup`                | `git branch --set-upstream-to=origin/$(git_current_branch)`                                                                                   |                                                                                                                               | `git`            |
| `ggu`                  | `git pull --rebase origin $(current_branch)`                                                                                                  |                                                                                                                               | `git`            |
| `gpsup`                | `git push --set-upstream origin $(git_current_branch)`                                                                                        |                                                                                                                               | `git`            |
| `ghh`                  | `git help`                                                                                                                                    |                                                                                                                               | `git`            |
| `gignore`              | `git update-index --assume-unchanged`                                                                                                         |                                                                                                                               | `git`            |
| `gignored`             | `git ls-files -v \`                                                                                                                           |                                                                                                                               | `git`            |
| `git-svn-dcommit-push` | `git svn dcommit && git push github master:svntrunk`                                                                                          |                                                                                                                               | `git`            |
| `gk`                   | `gitk --all --branches`                                                                                                                       |                                                                                                                               | `git`            |
| `gke`                  | `gitk --all $(git log -g --pretty=%h)`                                                                                                        |                                                                                                                               | `git`            |
| `gl`                   | `git pull`                                                                                                                                    |                                                                                                                               | `git`            |
| `glg`                  | `git log --stat`                                                                                                                              |                                                                                                                               | `git`            |
| `glgp`                 | `git log --stat -p`                                                                                                                           |                                                                                                                               | `git`            |
| `glgg`                 | `git log --graph`                                                                                                                             |                                                                                                                               | `git`            |
| `glgga`                | `git log --graph --decorate --all`                                                                                                            |                                                                                                                               | `git`            |
| `glgm`                 | `git log --graph --max-count=10`                                                                                                              |                                                                                                                               | `git`            |
| `glo`                  | `git log --oneline --decorate`                                                                                                                |                                                                                                                               | `git`            |
| `glol`                 | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'`                                      |                                                                                                                               | `git`            |
| `glols`                | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --stat`                               |                                                                                                                               | `git`            |
| `glod`                 | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset'`                                      |                                                                                                                               | `git`            |
| `glods`                | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ad) %C(bold blue)<%an>%Creset' --date=short`                         |                                                                                                                               | `git`            |
| `glola`                | `git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all`                                |                                                                                                                               | `git`            |
| `glog`                 | `git log --oneline --decorate --graph`                                                                                                        |                                                                                                                               | `git`            |
| `gloga`                | `git log --oneline --decorate --graph --all`                                                                                                  |                                                                                                                               | `git`            |
| `glp`                  | ``_git_log_prettily``                                                                                                                         |                                                                                                                               | `git`            |
| `gm`                   | `git merge`                                                                                                                                   |                                                                                                                               | `git`            |
| `gmom`                 | `git merge origin/master`                                                                                                                     |                                                                                                                               | `git`            |
| `gmt`                  | `git mergetool --no-prompt`                                                                                                                   |                                                                                                                               | `git`            |
| `gmtvim`               | `git mergetool --no-prompt --tool=vimdiff`                                                                                                    |                                                                                                                               | `git`            |
| `gmum`                 | `git merge upstream/master`                                                                                                                   |                                                                                                                               | `git`            |
| `gma`                  | `git merge --abort`                                                                                                                           |                                                                                                                               | `git`            |
| `gp`                   | `git push`                                                                                                                                    |                                                                                                                               | `git`            |
| `gpd`                  | `git push --dry-run`                                                                                                                          |                                                                                                                               | `git`            |
| `gpf`                  | `git push --force-with-lease`                                                                                                                 |                                                                                                                               | `git`            |
| `gpf!`                 | `git push --force`                                                                                                                            |                                                                                                                               | `git`            |
| `gpoat`                | `git push origin --all && git push origin --tags`                                                                                             |                                                                                                                               | `git`            |
| `gpu`                  | `git push upstream`                                                                                                                           |                                                                                                                               | `git`            |
| `gpv`                  | `git push -v`                                                                                                                                 |                                                                                                                               | `git`            |
| `gr`                   | `git remote`                                                                                                                                  |                                                                                                                               | `git`            |
| `gra`                  | `git remote add`                                                                                                                              |                                                                                                                               | `git`            |
| `grb`                  | `git rebase`                                                                                                                                  |                                                                                                                               | `git`            |
| `grba`                 | `git rebase --abort`                                                                                                                          |                                                                                                                               | `git`            |
| `grbc`                 | `git rebase --continue`                                                                                                                       |                                                                                                                               | `git`            |
| `grbd`                 | `git rebase develop`                                                                                                                          |                                                                                                                               | `git`            |
| `grbi`                 | `git rebase -i`                                                                                                                               |                                                                                                                               | `git`            |
| `grbm`                 | `git rebase master`                                                                                                                           |                                                                                                                               | `git`            |
| `grbs`                 | `git rebase --skip`                                                                                                                           |                                                                                                                               | `git`            |
| `grev`                 | `git revert`                                                                                                                                  |                                                                                                                               | `git`            |
| `grh`                  | `git reset`                                                                                                                                   |                                                                                                                               | `git`            |
| `grhh`                 | `git reset --hard`                                                                                                                            |                                                                                                                               | `git`            |
| `groh`                 | `git reset origin/$(git_current_branch) --hard`                                                                                               |                                                                                                                               | `git`            |
| `grm`                  | `git rm`                                                                                                                                      |                                                                                                                               | `git`            |
| `grmc`                 | `git rm --cached`                                                                                                                             |                                                                                                                               | `git`            |
| `grmv`                 | `git remote rename`                                                                                                                           |                                                                                                                               | `git`            |
| `grrm`                 | `git remote remove`                                                                                                                           |                                                                                                                               | `git`            |
| `grs`                  | `git restore`                                                                                                                                 |                                                                                                                               | `git`            |
| `grset`                | `git remote set-url`                                                                                                                          |                                                                                                                               | `git`            |
| `grss`                 | `git restore --source`                                                                                                                        |                                                                                                                               | `git`            |
| `grt`                  | `cd "$(git rev-parse --show-toplevel \`                                                                                                       |                                                                                                                               | `git`            |
| `gru`                  | `git reset --`                                                                                                                                |                                                                                                                               | `git`            |
| `grup`                 | `git remote update`                                                                                                                           |                                                                                                                               | `git`            |
| `grv`                  | `git remote -v`                                                                                                                               |                                                                                                                               | `git`            |
| `gsb`                  | `git status -sb`                                                                                                                              |                                                                                                                               | `git`            |
| `gsd`                  | `git svn dcommit`                                                                                                                             |                                                                                                                               | `git`            |
| `gsh`                  | `git show`                                                                                                                                    |                                                                                                                               | `git`            |
| `gsi`                  | `git submodule init`                                                                                                                          |                                                                                                                               | `git`            |
| `gsps`                 | `git show --pretty=short --show-signature`                                                                                                    |                                                                                                                               | `git`            |
| `gsr`                  | `git svn rebase`                                                                                                                              |                                                                                                                               | `git`            |
| `gss`                  | `git status -s`                                                                                                                               |                                                                                                                               | `git`            |
| `gst`                  | `git status`                                                                                                                                  |                                                                                                                               | `git`            |
| `gsta`                 | `git stash push`                                                                                                                              |                                                                                                                               | `git`            |
| `gsta`                 | `git stash save`                                                                                                                              |                                                                                                                               | `git`            |
| `gstaa`                | `git stash apply`                                                                                                                             |                                                                                                                               | `git`            |
| `gstc`                 | `git stash clear`                                                                                                                             |                                                                                                                               | `git`            |
| `gstd`                 | `git stash drop`                                                                                                                              |                                                                                                                               | `git`            |
| `gstl`                 | `git stash list`                                                                                                                              |                                                                                                                               | `git`            |
| `gstp`                 | `git stash pop`                                                                                                                               |                                                                                                                               | `git`            |
| `gsts`                 | `git stash show --text`                                                                                                                       |                                                                                                                               | `git`            |
| `gstall`               | `git stash --all`                                                                                                                             |                                                                                                                               | `git`            |
| `gsu`                  | `git submodule update`                                                                                                                        |                                                                                                                               | `git`            |
| `gsw`                  | `git switch`                                                                                                                                  |                                                                                                                               | `git`            |
| `gswc`                 | `git switch -c`                                                                                                                               |                                                                                                                               | `git`            |
| `gts`                  | `git tag -s`                                                                                                                                  |                                                                                                                               | `git`            |
| `gtv`                  | `git tag \`                                                                                                                                   |                                                                                                                               | `git`            |
| `gtl`                  | `gtl(){ git tag --sort=-v:refname -n -l ${1}* }; noglob gtl`                                                                                  |                                                                                                                               | `git`            |
| `gunignore`            | `git update-index --no-assume-unchanged`                                                                                                      |                                                                                                                               | `git`            |
| `gunwip`               | `git log -n 1 \`                                                                                                                              |                                                                                                                               | `git`            |
| `gup`                  | `git pull --rebase`                                                                                                                           |                                                                                                                               | `git`            |
| `gupv`                 | `git pull --rebase -v`                                                                                                                        |                                                                                                                               | `git`            |
| `gupa`                 | `git pull --rebase --autostash`                                                                                                               |                                                                                                                               | `git`            |
| `gupav`                | `git pull --rebase --autostash -v`                                                                                                            |                                                                                                                               | `git`            |
| `glum`                 | `git pull upstream master`                                                                                                                    |                                                                                                                               | `git`            |
| `gwch`                 | `git whatchanged -p --abbrev-commit --pretty=medium`                                                                                          |                                                                                                                               | `git`            |
| `gwip`                 | `git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- [skip ci]"`                      |                                                                                                                               | `git`            |
| `yaconf`               | `yay -Pg`                                                                                                                                     | Print current configuration                                                                                                   | `archlinux`      |
| `yain`                 | `yay -S`                                                                                                                                      | Install packages from the repositories                                                                                        | `archlinux`      |
| `yains`                | `yay -U`                                                                                                                                      | Install a package from a local file                                                                                           | `archlinux`      |
| `yainsd`               | `yay -S --asdeps`                                                                                                                             | Install packages as dependencies of another package                                                                           | `archlinux`      |
| `yaloc`                | `yay -Qi`                                                                                                                                     | Display information about a package in the local database                                                                     | `archlinux`      |
| `yalocs`               | `yay -Qs`                                                                                                                                     | Search for packages in the local database                                                                                     | `archlinux`      |
| `yalst`                | `yay -Qe`                                                                                                                                     | List installed packages including from AUR (tagged as "local")                                                                | `archlinux`      |
| `yamir`                | `yay -Syy`                                                                                                                                    | Force refresh of all package lists after updating mirrorlist                                                                  | `archlinux`      |
| `yaorph`               | `yay -Qtd`                                                                                                                                    | Remove orphans using yay                                                                                                      | `archlinux`      |
| `yare`                 | `yay -R`                                                                                                                                      | Remove packages, keeping its settings and dependencies                                                                        | `archlinux`      |
| `yarem`                | `yay -Rns`                                                                                                                                    | Remove packages, including its settings and unneeded dependencies                                                             | `archlinux`      |
| `yarep`                | `yay -Si`                                                                                                                                     | Display information about a package in the repositories                                                                       | `archlinux`      |
| `yareps`               | `yay -Ss`                                                                                                                                     | Search for packages in the repositories                                                                                       | `archlinux`      |
| `yaupg`                | `yay -Syu`                                                                                                                                    | Sync with repositories before upgrading packages                                                                              | `archlinux`      |
| `yasu`                 | `yay -Syu --no-confirm`                                                                                                                       | Same as `yaupg`, but without confirmation                                                                                     | `archlinux`      |
| `trconf`               | `trizen -C`                                                                                                                                   | Fix all configuration files with vimdiff                                                                                      | `archlinux`      |
| `trin`                 | `trizen -S`                                                                                                                                   | Install packages from the repositories                                                                                        | `archlinux`      |
| `trins`                | `trizen -U`                                                                                                                                   | Install a package from a local file                                                                                           | `archlinux`      |
| `trinsd`               | `trizen -S --asdeps`                                                                                                                          | Install packages as dependencies of another package                                                                           | `archlinux`      |
| `trloc`                | `trizen -Qi`                                                                                                                                  | Display information about a package in the local database                                                                     | `archlinux`      |
| `trlocs`               | `trizen -Qs`                                                                                                                                  | Search for packages in the local database                                                                                     | `archlinux`      |
| `trlst`                | `trizen -Qe`                                                                                                                                  | List installed packages including from AUR (tagged as "local")                                                                | `archlinux`      |
| `trmir`                | `trizen -Syy`                                                                                                                                 | Force refresh of all package lists after updating mirrorlist                                                                  | `archlinux`      |
| `trorph`               | `trizen -Qtd`                                                                                                                                 | Remove orphans using yaourt                                                                                                   | `archlinux`      |
| `trre`                 | `trizen -R`                                                                                                                                   | Remove packages, keeping its settings and dependencies                                                                        | `archlinux`      |
| `trrem`                | `trizen -Rns`                                                                                                                                 | Remove packages, including its settings and unneeded dependencies                                                             | `archlinux`      |
| `trrep`                | `trizen -Si`                                                                                                                                  | Display information about a package in the repositories                                                                       | `archlinux`      |
| `trreps`               | `trizen -Ss`                                                                                                                                  | Search for packages in the repositories                                                                                       | `archlinux`      |
| `trupd`                | `trizen -Sy && sudo abs && sudo aur`                                                                                                          | Update and refresh local package, ABS and AUR databases                                                                       | `archlinux`      |
| `trupd`                | `trizen -Sy && sudo abs`                                                                                                                      | Update and refresh the local package and ABS databases                                                                        | `archlinux`      |
| `trupd`                | `trizen -Sy && sudo aur`                                                                                                                      | Update and refresh the local package and AUR databases                                                                        | `archlinux`      |
| `trupd`                | `trizen -Sy`                                                                                                                                  | Update and refresh the local package database                                                                                 | `archlinux`      |
| `trupg`                | `trizen -Syua`                                                                                                                                | Sync with repositories before upgrading all packages (from AUR too)                                                           | `archlinux`      |
| `trsu`                 | `trizen -Syua --no-confirm`                                                                                                                   | Same as `trupg`, but without confirmation                                                                                     | `archlinux`      |
| `upgrade`              | `trizen -Syu`                                                                                                                                 | Sync with repositories before upgrading packages                                                                              | `archlinux`      |
| `yaconf`               | `yaourt -C`                                                                                                                                   | Fix all configuration files with vimdiff                                                                                      | `archlinux`      |
| `yain`                 | `yaourt -S`                                                                                                                                   | Install packages from the repositories                                                                                        | `archlinux`      |
| `yains`                | `yaourt -U`                                                                                                                                   | Install a package from a local file                                                                                           | `archlinux`      |
| `yainsd`               | `yaourt -S --asdeps`                                                                                                                          | Install packages as dependencies of another package                                                                           | `archlinux`      |
| `yaloc`                | `yaourt -Qi`                                                                                                                                  | Display information about a package in the local database                                                                     | `archlinux`      |
| `yalocs`               | `yaourt -Qs`                                                                                                                                  | Search for packages in the local database                                                                                     | `archlinux`      |
| `yalst`                | `yaourt -Qe`                                                                                                                                  | List installed packages including from AUR (tagged as "local")                                                                | `archlinux`      |
| `yamir`                | `yaourt -Syy`                                                                                                                                 | Force refresh of all package lists after updating mirrorlist                                                                  | `archlinux`      |
| `yaorph`               | `yaourt -Qtd`                                                                                                                                 | Remove orphans using yaourt                                                                                                   | `archlinux`      |
| `yare`                 | `yaourt -R`                                                                                                                                   | Remove packages, keeping its settings and dependencies                                                                        | `archlinux`      |
| `yarem`                | `yaourt -Rns`                                                                                                                                 | Remove packages, including its settings and unneeded dependencies                                                             | `archlinux`      |
| `yarep`                | `yaourt -Si`                                                                                                                                  | Display information about a package in the repositories                                                                       | `archlinux`      |
| `yareps`               | `yaourt -Ss`                                                                                                                                  | Search for packages in the repositories                                                                                       | `archlinux`      |
| `yaupd`                | `yaourt -Sy && sudo abs && sudo aur`                                                                                                          | Update and refresh local package, ABS and AUR databases                                                                       | `archlinux`      |
| `yaupd`                | `yaourt -Sy && sudo abs`                                                                                                                      | Update and refresh the local package and ABS databases                                                                        | `archlinux`      |
| `yaupd`                | `yaourt -Sy && sudo aur`                                                                                                                      | Update and refresh the local package and AUR databases                                                                        | `archlinux`      |
| `yaupd`                | `yaourt -Sy`                                                                                                                                  | Update and refresh the local package database                                                                                 | `archlinux`      |
| `yaupg`                | `yaourt -Syua`                                                                                                                                | Sync with repositories before upgrading all packages (from AUR too)                                                           | `archlinux`      |
| `yasu`                 | `yaourt -Syua --no-confirm`                                                                                                                   | Same as `yaupg`, but without confirmation                                                                                     | `archlinux`      |
| `upgrade`              | `yaourt -Syu`                                                                                                                                 | Sync with repositories before upgrading packages                                                                              | `archlinux`      |
| `pain`                 | `pacaur -S`                                                                                                                                   | Install packages from the repositories                                                                                        | `archlinux`      |
| `pains`                | `pacaur -U`                                                                                                                                   | Install a package from a local file                                                                                           | `archlinux`      |
| `painsd`               | `pacaur -S --asdeps`                                                                                                                          | Install packages as dependencies of another package                                                                           | `archlinux`      |
| `paloc`                | `pacaur -Qi`                                                                                                                                  | Display information about a package in the local database                                                                     | `archlinux`      |
| `palocs`               | `pacaur -Qs`                                                                                                                                  | Search for packages in the local database                                                                                     | `archlinux`      |
| `palst`                | `pacaur -Qe`                                                                                                                                  | List installed packages including from AUR (tagged as "local")                                                                | `archlinux`      |
| `pamir`                | `pacaur -Syy`                                                                                                                                 | Force refresh of all package lists after updating mirrorlist                                                                  | `archlinux`      |
| `paorph`               | `pacaur -Qtd`                                                                                                                                 | Remove orphans using pacaur                                                                                                   | `archlinux`      |
| `pare`                 | `pacaur -R`                                                                                                                                   | Remove packages, keeping its settings and dependencies                                                                        | `archlinux`      |
| `parem`                | `pacaur -Rns`                                                                                                                                 | Remove packages, including its settings and unneeded dependencies                                                             | `archlinux`      |
| `parep`                | `pacaur -Si`                                                                                                                                  | Display information about a package in the repositories                                                                       | `archlinux`      |
| `pareps`               | `pacaur -Ss`                                                                                                                                  | Search for packages in the repositories                                                                                       | `archlinux`      |
| `paupd`                | `pacaur -Sy && sudo abs && sudo aur`                                                                                                          | Update and refresh local package, ABS and AUR databases                                                                       | `archlinux`      |
| `paupd`                | `pacaur -Sy && sudo abs`                                                                                                                      | Update and refresh the local package and ABS databases                                                                        | `archlinux`      |
| `paupd`                | `pacaur -Sy && sudo aur`                                                                                                                      | Update and refresh the local package and AUR databases                                                                        | `archlinux`      |
| `paupd`                | `pacaur -Sy`                                                                                                                                  | Update and refresh the local package database                                                                                 | `archlinux`      |
| `paupg`                | `pacaur -Syua`                                                                                                                                | Sync with repositories before upgrading all packages (from AUR too)                                                           | `archlinux`      |
| `pasu`                 | `pacaur -Syua --no-confirm`                                                                                                                   | Same as `paupg`, but without confirmation                                                                                     | `archlinux`      |
| `upgrade`              | `pacaur -Syu`                                                                                                                                 | Sync with repositories before upgrading packages                                                                              | `archlinux`      |
| `pacin`                | `sudo pacman -S`                                                                                                                              | Install packages from the repositories                                                                                        | `archlinux`      |
| `pacins`               | `sudo pacman -U`                                                                                                                              | Install a package from a local file                                                                                           | `archlinux`      |
| `pacinsd`              | `sudo pacman -S --asdeps`                                                                                                                     | Install packages as dependencies of another package                                                                           | `archlinux`      |
| `pacloc`               | `pacman -Qi`                                                                                                                                  | Display information about a package in the local database                                                                     | `archlinux`      |
| `paclocs`              | `pacman -Qs`                                                                                                                                  | Search for packages in the local database                                                                                     | `archlinux`      |
| `paclsorphans`         | `sudo pacman -Qdt`                                                                                                                            | List all orphaned packages                                                                                                    | `archlinux`      |
| `pacmir`               | `sudo pacman -Syy`                                                                                                                            | Force refresh of all package lists after updating mirrorlist                                                                  | `archlinux`      |
| `pacre`                | `sudo pacman -R`                                                                                                                              | Remove packages, keeping its settings and dependencies                                                                        | `archlinux`      |
| `pacrem`               | `sudo pacman -Rns`                                                                                                                            | Remove packages, including its settings and dependencies                                                                      | `archlinux`      |
| `pacrep`               | `pacman -Si`                                                                                                                                  | Display information about a package in the repositories                                                                       | `archlinux`      |
| `pacreps`              | `pacman -Ss`                                                                                                                                  | Search for packages in the repositories                                                                                       | `archlinux`      |
| `pacrmorphans`         | `sudo pacman -Rs $(pacman -Qtdq)`                                                                                                             | Delete all orphaned packages                                                                                                  | `archlinux`      |
| `pacupd`               | `sudo pacman -Sy && sudo abs && sudo aur`                                                                                                     | Update and refresh the local package, ABS and AUR databases                                                                   | `archlinux`      |
| `pacupd`               | `sudo pacman -Sy && sudo abs`                                                                                                                 | Update and refresh the local package and ABS databases                                                                        | `archlinux`      |
| `pacupd`               | `sudo pacman -Sy && sudo aur`                                                                                                                 | Update and refresh the local package and AUR databases                                                                        | `archlinux`      |
| `pacupd`               | `sudo pacman -Sy`                                                                                                                             | Update and refresh the local package database                                                                                 | `archlinux`      |
| `pacupg`               | `sudo pacman -Syu`                                                                                                                            | Sync with repositories before upgrading packages                                                                              | `archlinux`      |
| `upgrade`              | `sudo pacman -Syu`                                                                                                                            | Sync with repositories before upgrading packages                                                                              | `archlinux`      |
| `pacfileupg`           | `sudo pacman -Fy`                                                                                                                             | Download fresh package databases from the server                                                                              | `archlinux`      |
| `pacfiles`             | `pacman -Fs`                                                                                                                                  | Search package file names for matching strings                                                                                | `archlinux`      |
| `pacls`                | `pacman -Ql`                                                                                                                                  | List files in a package                                                                                                       | `archlinux`      |
| `pacown`               | `pacman -Qo`                                                                                                                                  | Show which package owns a file                                                                                                | `archlinux`      |
| `be`                   | `bundle exec`                                                                                                                                 |                                                                                                                               | `bundler`        |
| `bl`                   | `bundle list`                                                                                                                                 |                                                                                                                               | `bundler`        |
| `bp`                   | `bundle package`                                                                                                                              |                                                                                                                               | `bundler`        |
| `bo`                   | `bundle open`                                                                                                                                 |                                                                                                                               | `bundler`        |
| `bout`                 | `bundle outdated`                                                                                                                             |                                                                                                                               | `bundler`        |
| `bu`                   | `bundle update`                                                                                                                               |                                                                                                                               | `bundler`        |
| `bi`                   | `bundle install --jobs=<cpu core count>`                                                                                                      |                                                                                                                               | `bundler`        |
| `c`                    | `composer`                                                                                                                                    | Starts composer                                                                                                               | `composer`       |
| `csu`                  | `composer self-update`                                                                                                                        | Updates composer to the latest version                                                                                        | `composer`       |
| `cu`                   | `composer update`                                                                                                                             | Updates composer dependencies and `composer.lock` file                                                                        | `composer`       |
| `cr`                   | `composer require`                                                                                                                            | Adds new packages to `composer.json`                                                                                          | `composer`       |
| `crm`                  | `composer remove`                                                                                                                             | Removes packages from `composer.json`                                                                                         | `composer`       |
| `ci`                   | `composer install`                                                                                                                            | Resolves and installs dependencies from `composer.json`                                                                       | `composer`       |
| `ccp`                  | `composer create-project`                                                                                                                     | Create new project from an existing package                                                                                   | `composer`       |
| `cdu`                  | `composer dump-autoload`                                                                                                                      | Updates the autoloader                                                                                                        | `composer`       |
| `cdo`                  | `composer dump-autoload --optimize-autoloader`                                                                                                | Converts PSR-0/4 autoloading to classmap for a faster autoloader (good for production)                                        | `composer`       |
| `cgu`                  | `composer global update`                                                                                                                      | Allows update command to run on COMPOSER_HOME directory                                                                       | `composer`       |
| `cgr`                  | `composer global require`                                                                                                                     | Allows require command to run on COMPOSER_HOME directory                                                                      | `composer`       |
| `cgrm`                 | `composer global remove`                                                                                                                      | Allows remove command to run on COMPOSER_HOME directory                                                                       | `composer`       |
| `cget`                 | `curl -s https://getcomposer.org/installer`                                                                                                   | Installs composer in the current directory                                                                                    | `composer`       |
| `l`                    | `ls -lFh`                                                                                                                                     | List files as a long list, show size, type, human-readable                                                                    | `common-aliases` |
| `la`                   | `ls -lAFh`                                                                                                                                    | List almost all files as a long list show size, type, human-readable                                                          | `common-aliases` |
| `lr`                   | `ls -tRFh`                                                                                                                                    | List files recursively sorted by date, show type, human-readable                                                              | `common-aliases` |
| `lt`                   | `ls -ltFh`                                                                                                                                    | List files as a long list sorted by date, show type, human-readable                                                           | `common-aliases` |
| `ll`                   | `ls -l`                                                                                                                                       | List files as a long list                                                                                                     | `common-aliases` |
| `ldot`                 | `ls -ld .*`                                                                                                                                   | List dot files as a long list                                                                                                 | `common-aliases` |
| `lS`                   | `ls -1FSsh`                                                                                                                                   | List files showing only size and name sorted by size                                                                          | `common-aliases` |
| `lart`                 | `ls -1Fcart`                                                                                                                                  | List all files sorted in reverse of create/modification time (oldest first)                                                   | `common-aliases` |
| `lrt`                  | `ls -1Fcrt`                                                                                                                                   | List files sorted in reverse of create/modification time(oldest first)                                                        | `common-aliases` |
| `rm`                   | `rm -i`                                                                                                                                       | Remove a file                                                                                                                 | `common-aliases` |
| `cp`                   | `cp -i`                                                                                                                                       | Copy a file                                                                                                                   | `common-aliases` |
| `mv`                   | `mv -i`                                                                                                                                       | Move a file                                                                                                                   | `common-aliases` |
| `zshrc`                | `${=EDITOR} ~/.zshrc`                                                                                                                         | Quickly access the ~/.zshrc file                                                                                              | `common-aliases` |
| `dud`                  | `du -d 1 -h`                                                                                                                                  | Display the size of files at depth 1 in current location in human-readable form                                               | `common-aliases` |
| `duf`                  | `du -sh`                                                                                                                                      | Display the size of files in current location in human-readable form                                                          | `common-aliases` |
| `t`                    | `tail -f`                                                                                                                                     | Shorthand for tail which outputs the last part of a file                                                                      | `common-aliases` |
| `fd`                   | `find . -type d -name`                                                                                                                        | Find a directory with the given name                                                                                          | `common-aliases` |
| `ff`                   | `find . -type f -name`                                                                                                                        | Find a file with the given name                                                                                               | `common-aliases` |
| `grep`                 | `grep --color`                                                                                                                                | Searches for a query string                                                                                                   | `common-aliases` |
| `sgrep`                | `grep -R -n -H -C 5 --exclude-dir={.git,.svn,CVS}`                                                                                            | Useful for searching within files                                                                                             | `common-aliases` |
| `h`                    | `history`                                                                                                                                     | Lists all recently used commands                                                                                              | `common-aliases` |
| `hgrep`                | `fc -El 0 \| grep`                                                                                                                            | Searches for a word in the list of previously used commands                                                                   | `common-aliases` |
| `help`                 | `man`                                                                                                                                         | Opens up the man page for a command                                                                                           | `common-aliases` |
| `p`                    | `ps -f`                                                                                                                                       | Displays currently executing processes                                                                                        | `common-aliases` |
| `sortnr`               | `sort -n -r`                                                                                                                                  | Used to sort the lines of a text file                                                                                         | `common-aliases` |
| `unexport`             | `unset`                                                                                                                                       | Used to unset an environment variable                                                                                         | `common-aliases` |
| `H`                    | `\| head`                                                                                                                                     | Pipes output to head which outputs the first part of a file                                                                   | `common-aliases` |
| `T`                    | `\| tail`                                                                                                                                     | Pipes output to tail which outputs the last part of a file                                                                    | `common-aliases` |
| `G`                    | `\| grep`                                                                                                                                     | Pipes output to grep to search for some word                                                                                  | `common-aliases` |
| `L`                    | `\| less`                                                                                                                                     | Pipes output to less, useful for paging                                                                                       | `common-aliases` |
| `M`                    | `\| most`                                                                                                                                     | Pipes output to more, useful for paging                                                                                       | `common-aliases` |
| `LL`                   | `2>&1 \| less`                                                                                                                                | Writes stderr to stdout and passes it to less                                                                                 | `common-aliases` |
| `CA`                   | `2>&1 \| cat -A`                                                                                                                              | Writes stderr to stdout and passes it to cat                                                                                  | `common-aliases` |
| `NE`                   | `2 > /dev/null`                                                                                                                               | Silences stderr                                                                                                               | `common-aliases` |
| `NUL`                  | `> /dev/null 2>&1`                                                                                                                            | Silences both stdout and stderr                                                                                               | `common-aliases` |
| `P`                    | `2>&1\| pygmentize -l pytb`                                                                                                                   | Writes stderr to stdout and passes it to pygmentize                                                                           | `common-aliases` |
| `pdf`                  | `acroread`                                                                                                                                    | Opens up a document using acroread                                                                                            | `common-aliases` |
| `ps`                   | `gv`                                                                                                                                          | Opens up a .ps file using gv                                                                                                  | `common-aliases` |
| `dvi`                  | `xdvi`                                                                                                                                        | Opens up a .dvi file using xdvi                                                                                               | `common-aliases` |
| `chm`                  | `xchm`                                                                                                                                        | Opens up a .chm file using xchm                                                                                               | `common-aliases` |
| `djvu`                 | `djview`                                                                                                                                      | Opens up a .djvu file using djview                                                                                            | `common-aliases` |
| `zip`                  | `unzip -l`                                                                                                                                    | Lists files inside a .zip file                                                                                                | `common-aliases` |
| `rar`                  | `unrar l`                                                                                                                                     | Lists files inside a .rar file                                                                                                | `common-aliases` |
| `tar`                  | `tar tf`                                                                                                                                      | Lists files inside a .tar file                                                                                                | `common-aliases` |
| `tar.gz`               | `echo`                                                                                                                                        | Lists files inside a .tar.gz file                                                                                             | `common-aliases` |
| `ace`                  | `unace l`                                                                                                                                     | Lists files inside a .ace file                                                                                                | `common-aliases` |
| `npmg`                 | `npm i -g`                                                                                                                                    | Install dependencies globally                                                                                                 | `npm`            |
| `npmS`                 | `npm i -S`                                                                                                                                    | Install and save to dependencies in your package.json                                                                         | `npm`            |
| `npmD`                 | `npm i -D`                                                                                                                                    | Install and save to dev-dependencies in your package.json                                                                     | `npm`            |
| `npmE`                 | `PATH="$(npm bin)":"$PATH"`                                                                                                                   | Run command from node_modules folder based on current directory                                                               | `npm`            |
| `npmO`                 | `npm outdated`                                                                                                                                | Check which npm modules are outdated                                                                                          | `npm`            |
| `npmV`                 | `npm -v`                                                                                                                                      | Check package versions                                                                                                        | `npm`            |
| `npmL`                 | `npm list`                                                                                                                                    | List installed packages                                                                                                       | `npm`            |
| `npmL0`                | `npm ls --depth=0`                                                                                                                            | List top-level installed packages                                                                                             | `npm`            |
| `npmst`                | `npm start`                                                                                                                                   | Run npm start                                                                                                                 | `npm`            |
| `npmt`                 | `npm test`                                                                                                                                    | Run npm test                                                                                                                  | `npm`            |
| `npmR`                 | `npm run`                                                                                                                                     | Run npm scripts                                                                                                               | `npm`            |
| `npmP`                 | `npm publish`                                                                                                                                 | Run npm publish                                                                                                               | `npm`            |
| `npmI`                 | `npm init`                                                                                                                                    | Run npm init                                                                                                                  | `npm`            |
| `pyfind`               | `find . -name "*.py"`                                                                                                                         | Finds .py files recursively in the current directory                                                                          | `python`         |
| `pygrep`               | `grep --include="*.py"`                                                                                                                       | Looks for `text` in .py files                                                                                                 | `python`         |
| `google`               | `web_search google`                                                                                                                           | `https://www.google.com/search?q=`                                                                                            | `web-search`     |
| `bing`                 | `web_search bing`                                                                                                                             | `https://www.bing.com/search?q=`                                                                                              | `web-search`     |
| `yahoo`                | `web_search yahoo`                                                                                                                            | `https://search.yahoo.com/search?p=`                                                                                          | `web-search`     |
| `ddg`                  | `web_search duckduckgo`                                                                                                                       | `https://www.duckduckgo.com/?q=`                                                                                              | `web-search`     |
| `sp`                   | `web_search startpage`                                                                                                                        | `https://www.startpage.com/do/search?q=`                                                                                      | `web-search`     |
| `yandex`               | `web_search yandex`                                                                                                                           | `https://yandex.ru/yandsearch?text=`                                                                                          | `web-search`     |
| `github`               | `web_search github`                                                                                                                           | `https://github.com/search?q=`                                                                                                | `web-search`     |
| `baidu`                | `web_search baidu`                                                                                                                            | `https://www.baidu.com/s?wd=`                                                                                                 | `web-search`     |
| `ecosia`               | `web_search ecosia`                                                                                                                           | `https://www.ecosia.org/search?q=`                                                                                            | `web-search`     |
| `goodreads`            | `web_search goodreads`                                                                                                                        | `https://www.goodreads.com/search?q=`                                                                                         | `web-search`     |
| `qwant`                | `web_search qwant`                                                                                                                            | `https://www.qwant.com/?q=`                                                                                                   | `web-search`     |
| `givero`               | `web_search givero`                                                                                                                           | `https://www.givero.com/search?q=`                                                                                            | `web-search`     |
| `stackoverflow`        | `web_search stackoverflow`                                                                                                                    | `https://stackoverflow.com/search?q=`                                                                                         | `web-search`     |
| `wiki`                 | `web_search duckduckgo \!w`                                                                                                                   | Wiki search on DuckDuckGo                                                                                                     | `web-search`     |
| `news`                 | `web_search duckduckgo \!n`                                                                                                                   | News search on DuckDuckGo                                                                                                     | `web-search`     |
| `youtube`              | `web_search duckduckgo \!yt`                                                                                                                  | Youtube search on DuckDuckGo                                                                                                  | `web-search`     |
| `map`                  | `web_search duckduckgo \!m`                                                                                                                   | Map search on DuckDuckGo                                                                                                      | `web-search`     |
| `image`                | `web_search duckduckgo \!i`                                                                                                                   | Image search on DuckDuckGo                                                                                                    | `web-search`     |
| `ducky`                | `web_search duckduckgo \!`                                                                                                                    | Ducky search on DuckDuckGo                                                                                                    | `web-search`     |
| `pp_json`              | `xargs -0 node -e "console.log(JSON.stringify(JSON.parse(process.argv[1]), null, 4));"`                                                       | pretty prints json                                                                                                            | `jsontools`      |
| `is_json`              | `xargs -0 node -e "try {json = JSON.parse(process.argv[1]);} catch (e) { console.log(false); json = null; } if(json) { console.log(true); }"` | returns true if valid json; false otherwise                                                                                   | `jsontools`      |
| `urlencode_json`       | `xargs -0 node -e "console.log(encodeURIComponent(process.argv[1]))"`                                                                         | returns a url encoded string for the given json                                                                               | `jsontools`      |
| `urldecode_json`       | `xargs -0 node -e "console.log(decodeURIComponent(process.argv[1]))"`                                                                         | returns decoded json for the given url encoded string                                                                         | `jsontools`      |
|                        |                                                                                                                                               |                                                                                                                               |                  |
| `letsfun`              | `startx`                                                                                                                                      | Start XOrg server                                                                                                             | Personal         |
| `elinks`               | `elinks -config-dir '.config/elinks'`                                                                                                         | Elinks default argument alias **Todo: Move this alias to XDG Support Script**                                                 | Personal         |
| `irssi`                | `irssi --home=~/.config/irssi --config=~/.config/irssi/config`                                                                                | Irssi default argument alias **Todo: Move this alias to XDG Support Script**, **Todo: Change home parameter to .local/share** | Personal         |

### Commands

| Command                  | Description                                                                                    | Plugin             |
|--------------------------|------------------------------------------------------------------------------------------------|--------------------|
| `current_branch`         | Returns the name of the current branch                                                         | `git`              |
| `git_current_user_name`  | Returns the `user.name` config value                                                           | `git`              |
| `git_current_user_email` | Returns the `user.email` config value                                                          | `git`              |
| `pacdisowned`            | List all disowned files in your system                                                         | `archlinux`        |
| `paclist`                | List all installed packages with a short description                                           | `archlinux`        |
| `pacmanallkeys`          | Get all keys for developers and trusted users                                                  | `archlinux`        |
| `pacmansignkeys`         | Locally trust all keys passed as parameters                                                    | `archlinux`        |
| `pacweb`                 | Open the website of an ArchLinux package                                                       | `archlinux`        |
| `pyclean <dirs>`         | Deletes byte-code and cache files from a list of directories or the current one                | `python`           |
| `gi list`                | List all the currently supported gitignore.io templates.                                       | `gitignore`        |
| `gi <template>`          | Show git-ignore output on the command line, e.g. `gi java` to exclude class and package files. | `gitignore`        |
| `copyfile <file>`        | Puts the contents of a file in your system clipboard so you can paste it anywhere.             | `copyfile`         |
| `lwd`                    | jump to the last working directory.                                                            | `last-working-dir` |

### Source Files

- `$ZSH/oh-my-zsh.sh`
- `$XDG_CONFIG_HOME/eray/xdg_base_directory_support.sh`
- `$HOME/.rvm/scripts/rvm`

Check related files (for example XDG Base Directory Support) for other sourced files.

### Environment Variables

| Variable              | Value                                                                                            |
|-----------------------|--------------------------------------------------------------------------------------------------|
| `$XDG_CACHE_HOME`     | `$HOME/.cache`                                                                                   |
| `$XDG_CONFIG_HOME`    | `$HOME/.config`                                                                                  |
| `$XDG_DATA_HOME`      | `$HOME/.local/share`                                                                             |
| `$EDITOR`             | `vim`                                                                                            |
| `$PASSWORD_STORE_DIR` | `$XDG_DATA_HOME/pass`                                                                            |
| `$PASSWORD_STORE_GIT` | `$XDG_DATA_HOME/pass`                                                                            |
| `$GNUPGHOME`          | `$XDG_CONFIG_HOME/gnupg`                                                                         |
| `$ANDROID_SDK_HOME`   | `$HOME/Development/Android/SDK`                                                                  |
| `$PATH`               | `${PATH}:/home/eray/Bin:/opt/cuda/bin:/home/eray/.local/bin:$(ruby -e 'print Gem.user_dir')/bin` |

Check Eray's XDG Base Directory Support section for other ENV variables.

### Startup

| Program           | Description                                    |
|-------------------|------------------------------------------------|
| `neofetch`        | Display information about system and terminal. |
| `thefuck --alias` | Start thefuck alias. **Todo: Remove eval**     |

## Eray's XDG Base Directory Support

### Zsh

There was an issue with Zsh support:

- Zsh and Bash use same `HISTFILE` environment. Because of this, its also change `bash`'s history file path.

History file location: `$XDG_DATA_HOME/zsh/history`

Script will be create `$XDG_DATA_HOME/zsh` directory if its not exists.

### Java

Java Options:

- `java.util.prefs.userRoot=$XDG_CONFIG_HOME`
- `user.home=$XDG_DATA_HOME`

Yourkit home location: `$XDG_CACHE_HOME`

### Elinks

Elinks configuration directory: `$XDG_CONFIG_HOME/elinks`.

### Drush

Drush cache directory: `$XDG_CACHE_HOME/drush`.

### OpenSSL

Rand file path: `$XDG_DATA_HOME/openssl/rnd`.

Script will be create `$XDG_DATA_HOME/openssl` directory if its not exists.

### Curl

Curl home directory: `$XDG_CONFIG_HOME/curl`

### NodeJS

Node repl history file location: `$XDG_DATA_HOME/node_repl_history`.

NPM User config path: `$XDG_CONFIG_HOME/npm/npmrc`.

### Wget

Its add alias for wget: `wget=wget --hsts-file=$XDG_CACHE_HOME/wget/wget-hsts`.

Wgetrc location: `$XDG_CONFIG_HOME/wget/wgetrc`.

Its will create `$XDG_CONFIG_HOME/wget` directory and `$XDG_CONFIG_HOME/wget/wgetrc` empty file if they are not exists.

### Ruby

Bundler related:

- Bundle user config = `$XDG_CONFIG_HOME/bundle`
- Bundle user cache = `$XDG_CACHE_HOME/bundle`
- Bundle user plugins = `$XDG_DATA_HOME/bundle`

Gem related:

- Gem home = `$XDG_DATA_HOME/gem`
- Gem spec cache = `$XDG_CACHE_HOME/gem`

### X11

Xinitrc location = `$XDG_CONFIG_HOME/X11/xinitrc`

Xserverrc location = `$XDG_CONFIG_HOME/X11/xserverrc`

XAuthority location = `$XDG_RUNTIME_DIR/Xauthority`

Its add alias for start: `startx=startx $XDG_CONFIG_HOME/X11/xinitrc`

## Compton

### Installation

Link compton configuration.

```
ln -sf ~/.dotfiles/compton.conf ~/.config/compton.conf
```

### Overview

Options:

- Backend: `glx`
- Shadows: `true`
- Draw shadows on DND Windows: `false`
- Draw shadows on dock/panel windows: `false`
- Blur radius for shadows: `5`
- Left offset for shadows: `-5`
- Top offset for shadows: `-5`
- Opacity of shadows: `0.5`
- Shadow color: `black` (default)
- Menu opacity: `1`
- Inactive opacity: `1`
- Active opacity: `1`
- Frame opacity: `1`
- Alpha step: `0.06`
- Fading: `true`
- Fade delta: `4`ms. (change it to `10` if its too low).
- Fade in opacity change: `0.03`
- Fade out opacity change: `0.03`
- Refresh rate: `0` (auto from XRandr extension)
- VSync mode: `opengl-swc`

Shadow Excludes:

- `Notification`
- `Plank`
- `Docky`
- `Kupfer`
- `xfce4-notifyd`
- `VLC`
- `compton`
- `Chromium`
- `Chrome`
- `.Conky`
- `.Kupfer`
- `.Synapse`
- `.Notify-osd`
- `.Cairo-dock`
- `.Xfce4-notifyd`
- `.Xfce4-power-manager`
- `GTK Frames`

## Polybar

### Installation

Link polybar configuration folder with your `$XDG_CONFIG_HOME`.

```
ln -sf ~/.dotfiles/polybar ~/.config/polybar
```

You can customize colors,icons(+format) and bar settings in config's first 3 sections(`icons`, `colors` and `settings`).

### Overview

There is only one bar(top) on current setup. 

- Width: `100%`
- Height: `27`
- Radius: `0`
- Fixed Center: `false`
- Background Color: `#ff3a4750`
- Foreground Color: `#ffeeeeee`
- Line size: `0`
- Border Bottom: `1px #303841`
- Padding: `0 2px 0 0`
- Module Margin: `0 1px 0 1px`
- Fonts: `FontAwesome:size=10;0`, `Font Awesome 5 Free:size=10;0`, `Font Awesome 5 Brands:size=10;0`, `Droid Sans Mono Dotted for Powerline:size=10`, `unifont:fontformat=truetype:size=8:antiaias=false;0`, `xos4 Terminess Powerline:pixelsize=10;1`, `siji:pixelsize=10;1`
- Tray position: `right`
- Tray Padding: `2px`

#### Left Modules

- i3
  - Strip Workspace Numbers: `true`
  - Fuzzy Match: `true`
  - Format: `<label-mode><label-state>`
  - Index Sort: `true`
  - Wrapping Scroll: `false`
  - Label Mode
    - Padding: `3px`
    - Background: `#dae7f1`
    - Foreground: `#000`
  - Label Focused
    - Text: `%name%`
    - Background: `#ff455560`
    - Padding: `5px`
  - Label Unfocused
    - Text: `%name%`
    - Background: `#ff333f47`
    - Underline: `#1c3144`
    - Padding: `5px`
  - Label Visible
    - Text: `%name%`
    - Background: `#33658a`
    - Underline: ` `
    - Padding: `5px`
  - Label Urgent
    - Text: `%name%`
    - Background: `#d72323`
    - Underline: ` `
    - Padding: `5px`

#### Center Modules

- RainbowText
  - Script Location: `~/.config/polybar/scripts/rainbow-text.sH`
  - Interval: `1` second(s)

#### Right Modules

- Services
  - Script Location: `systemctl --type=service --state=running list-units --no-pager | grep running | wc -l`
  - Interval: `10` second(s)
  - Label: ` %output%`
  - On Click: `~/.config/polybar/scripts/services.sh`
- Docker
  - Script Location: `if docker version >/dev/null 2>&1; then docker ps -q | wc -l; fi`
  - Interval: `10` second(s)
  - Label: ` %output%`
  - On Click: `~/.config/polybar/scripts/docker.sh`
- Web Server Status
  - Script Location: `~/.config/polybar/scripts/status-web.sh`
  - Interval:`10` second(s)
- Database Server Status
  - Script Location: `~/.config/polybar/scripts/status-database.sh`
  - Interval: `10` second(s)
- Filesystem
  - Mounts: `/`, `/var` and `/home`
  - Interval: `25` second(s)
  - Mounted Text: `%{F#0a81f5}%{F-} %mountpoint%: %percentage_free%%(%free%)`
  - Unmounted Text: `%mountpoint% not mounted`
- Volume
  - Format: `<ramp-volume> <bar-volume>`
  - Label Volume
    - Text: ``
    - Foreground: `#ffeeeeee`
  - Label Muted
    - Text: ``
    - Foreground: `#919191`
  - Bar
    - Width: `10`
    - Foreground: `#55aa55`-`#55aa55`-`#55aa55`-`#55aa55`-`#55aa55`-`#f5a70a`-`#ff5555`
    - Indicator
      - Text: `|`
      - Font Size: `4`
    - Fill
      - Text: `─`
      - Font Size: `1`
    - Empty
      - Text: `─`
      - Font Size: `4`
  - Ramp: ``->``->``
- Memory
  - Format: `<label> <bar-used>`
  - Label: ` %percentage_used%%`
  - Bar Used
    - Width: `10`
    - Foreground: `#aaff77`->`#aaff77`->`#fba922`->`#ff5555`
    - Indicator
      - Text: `|`
      - Font Size: `6`
      - Foreground: `#ff`
    - Fill
      - Text: `─`
      - Font Size: `6`
    - Empty
      - Text: `─`
      - Font Size: `6`
      - Foreground: `#444444`
- CPU
  - Interval: `0.5` second(s)
  - Format: `<label> <ramp-coreload>`
  - Label: ` %percentage%%`
  - Ramp
    - Font Size: `4`
    - Text: `▁`->`▂`->`▃`->`▄`->`▅`->`▆`->`▇`->`█`
    - Foreground: `#aaff77`->`#aaff77`->`#aaff77`->`#aaff77`->`#fba922`->`#fba922`->`#ff5555`->`#ff5555`
- Wlan
  - Interface: `wlp7s0` (**Change it if you use another interface name**)
  - Interval: `3.0` second(s)
  - Connected
    - Format: `<ramp-signal> <label-connected>`
    - Underline: `#9f78e1`
    - Label: ` %downspeed%  %upspeed%`
  - Disconnected
    - Format: ` `
  - Ramp
    - Text: ``->``->``->``->``->``
    - Foreground: `#ff0505`->`#ff6d05`->`#ffd105`->`#fbff05`->`#deff05`->`#3bff05`
- Eth
  - Interface: `enp8s0` (**Change it if you use another interface name**)
  - Interval: `3.0` second(s)
  - Connected
    - Underline: `#55aa55`
    - Prefix: ` `
    - Label: `%local_ip%`
  - Disconnected
    - Format: ` `
- Battery
  - Battery: `BAT0` (**Change it if you use another battery name/number**)
  - Adapter: `AC`
  - Full At: `98` (**Change it if your battery life is bad/good**)
  - Charging
    - Format: `<animation-charging> <label-charging>`
    - Underline: `#ffb52a`
    - Animation: ``->``->``->``->``
    - Animation Foreground: `colors battery charging`
    - Animation Framerate: `300`
  - Discharging
    - Format: `<ramp-capacity> <label-discharging>`
    - Underline: `#805300`
  - Full
    - Prefix: ` `
    - Underline: `#ffb52a`
  - Ramp
    - Text: ``->``->``->``->``
    - Foreground: `#ff0000`->`#ffcc00`->`#99ffff00`->`#99bfff00`->`#99bfff00`
- Temperature
  - Warn: `75`
  - Default
    - Format: `<ramp> <label>`
    - Underline: `#f50a4d`
    - Label: `%temperature%`
  - Warn
    - Format: `<ramp> <label-warn>`
    - Underline: `#f50a4d`
    - Label: `%temperature%`
  - Ramp
    - Text: ``->``->``->``->``
    - Foreground: `#00ff00`->`#ccaaff00`->`#ccaaff00`->`#ff9900`->`#ff0000`
- Date
  - Interval: `5` second(s)
  - Default
    - Date: ` `
    - Time: `%H:%M`
  - Alternative
    - Date: `%d.%m.%Y`
    - Time: `%H:%M:%S`
  - Prefix
    - Text: ``
    - Foreground: `#ffffff`
  - Underline: `#0a6cf5`
  - Label: `%date% %time%`

## Curl

### Installation

Link dotfiles `curl` folder to your `$XDG_CONFIG_DIR`.

```
ln -sf ~/.dotfiles/curl ~/.config/curl
```

### Overview

- User Agent: `Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36`
- Referer: `;auto`
- Timeout: `30` second(s)

## Mutt

### Installation

Link dotfiles `mutt` folder to your `$XDG_CONFIG_DIR`.

```
ln -sf ~/.dotfiles/mutt ~/.config/mutt
```

### Overview

- Multiple Account Support
- XDG Base Directory support
- Custom status format
- Sidebar
- Aliases
- Autoview
- Header Ignore
- Theme: `default` (`gruvbox` installed but optional)

### Add E-Mail Account

1. Copy any other config as `$XDG_CONFIG_HOME/mutt/accounts/email-name/config` file.
2. Add `folder-hook` to the `muttrc` file.
3. If you want to **default** change `source` on `muttrc` file.
4. Add macro in `muttrc` file for retrieve e-mail.

### Settings

You can change these settings from `muttrc` file.

- Charset: `utf-8`
- Editor: `vim -c 'set nocompatible tw=72 ft=mail noautoindent fo=aw cursorline number'`
- Status
  - Chars: ` *%A`
  - Format: `───[ Acc: %f ]───[%r%m mesaj%?n? (%n yeni)?%?d? (%d silinecek)?%?t? (%t işaretli)? ]───%>─%?p?( %p ertelenm    iş )?───`
- Sidebar
  - Format: `%B%?F? [%F]?%* %?N?%N/?%S`
- Signature On Top: `true`
- Mail check: `60` second(s)
- No fucking beep!

### Aliases

| Section(s)      | Alias | Command                  |
|-----------------|-------|--------------------------|
| `index`,`pager` | `H`   | `sidebar-toggle-visible` |
| `index`,`pager` | `J`   | `sidebar-next`           |
| `index`,`pager` | `K`   | `sidebar-prev`           |
| `index`,`pager` | `L`   | `sidebar-open`           |
| `index`,`pager` | `G`   | `imap-fetch-mail`        |

### Auto View

- `application/msword`
- `application/octet-stream`
- `application/RTF`
- `application/x-gunzip`
- `application/x-gzip`
- `application/x-perl`
- `application/x-sh`
- `application/x-tar-gz`
- `application/x-tcl`
- `application/x-zip-compressed`
- `applicatioN/zip`
- `image/tiff`
- `text/html`
- `text/x-vcard`

Order: `text/enriched`, `text/plain`, `text` and `text/html`.

## X11

### Installation

Link `X11` folder to the your `$XDG_CONFIG_HOME` directory.

```
$ ln -sf ~/.dotfiles/X11 ~/.config/X11
```

If you didn't install `Eray's XDG Base Directory Support` on this dotfiles, than add this environment variable to your session.

```
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
# Optional
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
# Another way (You can use both if you want)
alias startx="startx $XDG_CONFIG_HOME/X11/xinitrc"
# Optional
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
```

### Overview

- User and System resources with keybinds.
- Man fix (`$MAN_DISABLE_SECCOMP=1`)
- XRandr Nvidia Fix (**If you don't use NVIDIA prop driver, comment it on xinitrc file**)
- GnomeKeyring i3 Fix

## Vim

Plugin Manager: [Plug]()
Color Scheme: [Neodark](https://github.com/KeitaNakamura/neodark.vim)

|                      |                                   |                                                            |
|----------------------|-----------------------------------|------------------------------------------------------------|
| Lightline            | Configurable Statusline           | [Github](https://github.com/itchyny/lightline.vim)         |
| Vim Multiple Cursors | Multiple Cursors like SublimeText | [Github](https://github.com/terryma/vim-multiple-cursors)  |
| NERDTree             | Tree Explorer                     | [Github](https://github.com/scrooloose/nerdtree)           |
| EditorConfig         | .editconfig Support               | [Github](https://github.com/editorconfig/editorconfig-vim) |
| Emmet                | Emmet Support                     | [Github](https://github.com/mattn/emmet-vim)               |
| GitGutter            | Show git diff in the gutter       | [Github](https://github.com/airblade/vim-gitgutter)        |
| Syntastic            | Syntax checker                    | [Github](https://github.com/vim-syntastic/syntastic)       |
| PHPComplete          | PHP Autocomplete                  | [Github](https://github.com/shawncplus/phpcomplete.vim)    |

### GitGutter

Commands:

- Turn off with `:GitGutterDisable`
- Turn on with `:GitGutterEnable`
- Toggle with `:GitGutterToggle`
- Sign on with `:GitGutterSignsEnable`
- Sign off with `:GitGutterSignsDisable`
- Sign toggle with `:GitGutterSingsToggle`
- Line highlight on with `:GitGutterLineHighlightsEnable`
- Line highlight off with `:GitGutterLineHighlightsDisable`
- Line highlight toggle with `:GitGutterLineHighlightsToggle`

Keymaps:

- <kbd>]</kbd>+<kbd>c</kbd> - Jump to next change
- <kbd>[</kbd>+<kbd>c</kbd> - Jump to prev change
- <kbd>\\</kbd>+<kbd>h</kbd>+<kbd>s</kbd> - Stage current change (on cursor)
- <kbd>\\</kbd>+<kbd>h</kbd>+<kbd>u</kbd> - Undo current change (on cursor)

### Emmet

Type emmet code and <kbd>Ctrl</kbd>+<kbd>y</kbd> then <kbd>,</kbd> type

### NERDTree

- <kbd>Ctrl</kbd>+<kbd>o</kbd> opens NERDTree

### Vim Multiple Cursors

Go to `selection` mode and select, start multiple cursors:

- <kbd>Ctrl</kbd>+<kbd>n</kbd> start multicursor
  - <kbd>Ctrl</kbd>+<kbd>n</kbd> add new virtual cursor
  - <kbd>Ctrl</kbd>+<kbd>x</kbd> skip next match
  - <kbd>Ctrl</kbd>+<kbd>p</kbd> remove current virtual cursor
- <kbd>Esc</kbd> exit back to regular Vim
