# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ecsanchesjr/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
fpath=($fpath "/home/ecsanchesjr/.zfunctions")

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

fpath=($fpath "/home/ecsanchesjr/.zfunctions")

bindkey '\e[H'    beginning-of-line 
bindkey '\e[F'    end-of-line

chpwd() {
  ls --color=tty
}

CASE_SENSITIVE="true"
PATH=$PATH:/home/ecsanchesjr/.gem/ruby/2.5.0/bin
export PATH
