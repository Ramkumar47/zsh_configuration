# zsh_configuration
personal z shell configuration

## notes of installation and configuration
  * install zsh from repository and follow *arch wiki* to make it default.
  * install **oh my zsh** by following instructions on their website.
  * install powerline10k by using following command
> git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k
  * now to go with the fresh configuration, proceed with following points
	  - launch powerline configuration (by default it will launch) by **p10k configure** in terminal and proceed with it.
	  - go with classic prompt style with unicode support and darkest color with many icons to get your favourite look.
	  - that will modify the zshrc file according to the configuration chosen and powerline10k theme will be installed.
  * else, copy p10k.zsh and zshrc from the current folder to the home directory under hidden state
  	  - this configuration has custom made prompt element that notifies OpenFOAM sourced environment, the snippets and its instructions can be seen below
  * install **zsh-syntax-highlighting** pack from repository and source it (by default it is sourced in zshrc file itself)
  * then install vim keybinding plugin by using the command below
> mkdir -p $ZSH/plugins/zsh-vim-mode
> git clone https://github.com/softmoth/zsh-vim-mode $ZSH/plugins/zsh-vim-mode/
  * this installs vim mode for the terminal commands.
  * the fonts from folder fontsForPromptAndRanger/ can be installed that is useful for icons on prompts. they are taken from the offical github page of powerlevel10k

## note
  * the PROMPT color and shortcuts are taken from oh-my-zsh configuration automatically.
  * the foreground and background of commands typed on terminal is only configured by terminal configurations, so does other terminal options like transparency.
  * the foreground and background colors like on pacman search are governed by terminal configurations only.
  * global variables such as TERMINAL and EDITOR are defined in the *zprofile* file

## Custom prompt element for OpenFOAM environment
the definition of prompt element function has to be made at the end of ~/.p10k.zsh file, which is as follows
> # custom prompt element for OpenFOAM environment
> function prompt_OpenFOAM(){
>     if ( ! $OpenFOAM_STATE ) then
>         return
>     fi
>     p10k segment -b 13 -f 0 -i '▽' -t 'OF'
> }

and its entry has to be given in the lists of Right prompt elements, as given in the line 52 of file p10k.zsh

this function requires a custom environment variable, called **OpenFOAM_STATE** which is to be defined in
the zshrc file as below
> # custom Prompt variables definition
> export OpenFOAM_STATE=false # used for prompt element

and the command that activates the OpenFOAM environment will trigger this "switch" variable that activates
the function prompt element as given below.
> alias of="source /opt/OpenFOAM-v2012/OpenFOAM-v2012/etc/bashrc; echo \"OpenFOAM initiated\"; export OpenFOAM_STATE=true"

make sure that the variable definition is before the alias command
