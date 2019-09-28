export ZSH=/home/SiddharthVipul/.oh-my-zsh

ZSH_THEME="robbyrussell"
export UPDATE_ZSH_DAYS=13

plugins=(
  git
  ansible
  dnf
  history-substring-search
)

source $ZSH/oh-my-zsh.sh
autoload -U colors && colors

export LANG=en_US.UTF-8

## vi mode on steroids
#bindkey -v
#export KEYTIMEOUT=1
#
## Change cursor shape for different vi modes.
#function zle-keymap-select {
#  if [[ ${KEYMAP} == vicmd ]] ||
#     [[ $1 = 'block' ]]; then
#    echo -ne '\e[1 q'
#  elif [[ ${KEYMAP} == main ]] ||
#       [[ ${KEYMAP} == viins ]] ||
#       [[ ${KEYMAP} = '' ]] ||
#       [[ $1 = 'beam' ]]; then
#    echo -ne '\e[5 q'
#  fi
#}
#zle -N zle-keymap-select
#zle-line-init() {
#    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
#    echo -ne "\e[5 q"
#}
#zle -N zle-line-init
#echo -ne '\e[5 q' # Use beam shape cursor on startup.
#preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.
#

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

if [[ ! $TERM =~ screen ]]; then
    exec tmux
fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#Paths
export PATH="/home/SiddharthVipul/anaconda3/bin:$PATH"
export PATH="/home/SiddharthVipul/.local/bin:$PATH"

#compdef dnf=yum
#echo -ne " Hello Vipul ... Its "; date '+%A,%-d %B %Y'""
source $HOME/.shells/alias
source $HOME/.shells/functions

#PATH="/home/siddharthvipul/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/siddharthvipul/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/siddharthvipul/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/siddharthvipul/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/siddharthvipul/perl5"; export PERL_MM_OPT;
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/SiddharthVipul/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
#if [ $? -eq 0 ]; then
    #\eval "$__conda_setup"
#else
    #if [ -f "/home/SiddharthVipul/anaconda3/etc/profile.d/conda.sh" ]; then
        #. "/home/SiddharthVipul/anaconda3/etc/profile.d/conda.sh"
        #CONDA_CHANGEPS1=false conda activate base
    #else
        #\export PATH="/home/SiddharthVipul/anaconda3/bin:$PATH"
    #fi
#fi
#unset __conda_setup
# <<< conda init <<<
#source <(oc completion zsh)
