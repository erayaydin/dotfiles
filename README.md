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
|--------------------|-------------|--------------|----------------------------------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------------------|

## i3

VCS Location: `/i3`
Config Target Location: `~/.config/i3`

Window Theme:

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
|-------|------|-----------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------|

Window Specific Layouts:

| Window                             | Floating | Sticky | Position |
|------------------------------------|----------|--------|----------|
| `[role="pop-up"]`                  | Yes      | No     | Center   |
| `[role="Open Files"]`              | Yes      | Yes    | -        |
| `[role="File Operation Progress"]` | Yes      | Yes    | -        |
| `.Steam`                           | Yes      | No     | -        |
| `[instance="file_progress"]`       | No       | Yes    | -        |
|------------------------------------|----------|--------|----------|

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
|---------------------------------------------------|--------------------------------------------------|

Resize Mode:

| Hotkey           | Action                 |
|------------------|------------------------|
| <kbd>Left</kbd>  | Resize shrink width    |
| <kbd>Down</kbd>  | Resize grow height     |
| <kbd>Up</kbd>    | Resize shrink height   |
| <kbd>Right</kbd> | Resize grow width      |
| <kbd>Esc</kbd>   | Change mode to default |
|------------------|------------------------|

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
|-------------------|---------------------------|

Startup Programs:

| Program                                              | Description                |
|------------------------------------------------------|----------------------------|
| `feh --randomize --bg-scale ~/Pictures/Wallpapers/*` | Set wallpaper              |
| `nm-applet`                                          | Network Manager Applet     |
| `compton --config ~/.config/compton.conf`            | Start compositor (compton) |
| `~/.config/polybar/polybar-launch.sh`                | Polybar                    |
|------------------------------------------------------|----------------------------|

## Vim

Plugin Manager: [Plug]()
Color Scheme: [Neodark](https://github.com/KeitaNakamura/neodark.vim)

| Lightline | Configurable Statusline | [Github](https://github.com/itchyny/lightline.vim)
| Vim Multiple Cursors | Multiple Cursors like SublimeText | [Github](https://github.com/terryma/vim-multiple-cursors)
|
| NERDTree | Tree Explorer | [Github](https://github.com/scrooloose/nerdtree)
| EditorConfig | .editconfig Support | [Github](https://github.com/editorconfig/editorconfig-vim)
| Emmet | Emmet Support | [Github](https://github.com/mattn/emmet-vim)
| GitGutter | Show git diff in the gutter | [Github](https://github.com/airblade/vim-gitgutter)
| Syntastic | Syntax checker | [Github](https://github.com/vim-syntastic/syntastic)
| PHPComplete | PHP Autocomplete | [Github](https://github.com/shawncplus/phpcomplete.vim)

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
