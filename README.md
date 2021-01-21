# zsh_configuration
personal z shell configuration

## notes of installation and configuration
  * install zsh from repository and follow *arch wiki* to make it default.
  * install **oh my zsh** by following instructions on their website.
  * install powerline10k by using following command
> git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
  * launch powerline configuration (by default it will launch) by **p10k configure** in terminal and proceed with it.
  * go with classic prompt style with unicode support and darkest color with many icons to get your favourite look.
  * that will modify the zshrc file according to the configuration chosen and powerline10k theme will be installed.
  * install **zsh-syntax-highlighting** pack from repository and source it (by default it is sourced in zshrc file itself)
  * then install vim keybinding plugin by using the command below
> mkdir -p $ZSH/plugins/zsh-vim-mode
> git clone https://github.com/softmoth/zsh-vim-mode $ZSH/plugins/zsh-vim-mode/
  * this installs vim mode for the terminal commands.

## note
  * the PROMPT color and shortcuts are taken from oh-my-zsh configuration automatically.
  * the foreground and background of commands typed on terminal is only configured by terminal configurations, so does other terminal options like transparency.
  * the foreground and background colors like on pacman search are governed by terminal configurations only.
  * global variables such as TERMINAL and EDITOR are defined in the *zprofile* file
