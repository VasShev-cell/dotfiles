if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

to_trash() {
	mv $1 ~/.Trash
}

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
export NVIM_RUNTIMEPATH="$HOME/.config/nvim"
export ANDROID_HOME=/Volumes/UNTITLED/Android/sdk
export ANDROID_SDK_ROOT=/Volumes/UNTITLED/Android/sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$PATH
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

export RUST_HOME=$HOME/.cargo/bin
export PATH=$PATH:$RUST_HOME

eval "$(rbenv init -)"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export PATH="$JAVA_HOME/bin:$PATH"


export PATH="/Library/Frameworks/Python.framework/Versions/3.12/bin:$PATH"
export PATH="$HOME/Library/Python/3.12/bin:$PATH"


export OLLAMA_API_BASE="http://127.0.0.1:11434"
export OLLAMA_CONTEXT_LENGTH=16384

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

. "$HOME/.local/bin/env"

# aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ls="eza --color=always --long --icons=always --no-time"
alias pwd="pwd | pbcopy && pwd"
alias rmrf="to_trash"
alias glg="git log --oneline --graph --decorate --all"

alias aqc="aider --model ollama/qwen2.5-coder:7b"
alias aq="aider --model ollama/qwen3:4b"

alias qc="unset HTTP_PROXY HTTPS_PROXY http_proxy https_proxy ALL_PROXY && export NO_PROXY=127.0.0.1,localhost,::1 && aqc"
alias q="unset HTTP_PROXY HTTPS_PROXY http_proxy https_proxy ALL_PROXY && export NO_PROXY=127.0.0.1,localhost,::1 && aq"

alias oqc="ollama run qwen2.5-coder:7b"
alias oq="ollama run qwen3:4b"

fpath+=~/.zfunc; autoload -Uz compinit; compinit

zstyle ':completion:*' menu select
