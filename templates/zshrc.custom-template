#

               ##::[[---  ZSH Config ---]]::##

#===========================================================
                  ##----- Options -----##
#===========================================================

  # See:
    # https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

    # https://blog.callstack.io/supercharge-your-terminal-with-zsh-8b369d689770

#===========================================================

# Config Variables #
#-----------------------------------------------------------

# For embedded devices with small NAND:
  ZSHexternal="/mnt/sda1/$(echo $USER)/.oh-my-zsh"
  ZSHcustom="/mnt/sda1/zsh_custom"


#===========================================================
                   ##----- Global -----##
#===========================================================

# Bindings #
#-----------------------------------------------------------

# emacs:
  set -o emacs

# DELETE:
  bindkey   "^[[3~"   delete-char

# END:
  bindkey   "^[[4~"   end-of-line

# HOME:
  bindkey   "^[[1~"   beginning-of-line

# Search auto complete with UP key
  bindkey   "^[[A"    history-substring-search-up

# Search auto complete with DOWN key
  bindkey   "^[[B"    history-substring-search-down

# Exports #
#-----------------------------------------------------------

# Terminal:
  export TERM="xterm-256color"

# Oh-My-ZSH Directory:
  if [ -e $ZSHexternal ]; then
    export ZSH="$ZSHexternal"
  else
    export ZSH="$HOME/.oh-my-zsh"
  fi

# Oh-My-ZSH Auto-update frequency:
  export UPDATE_ZSH_DAYS=3

# Man path:
  export MANPATH="/usr/local/man:$MANPATH"

# Editor:
  export EDITOR='nano'

  # File Association:
    alias n=nano
    alias -s conf=nano
    alias -s cnf=nano
    alias -s login=nano

# History #
#-----------------------------------------------------------

# File:
  HISTFILE=$HOME/.zsh_history

# Size:
  HISTSIZE=1000
  SAVEHIST=1000

# Remove older duplicate entries
  setopt hist_ignore_all_dups

# Remove superfluous blanks
  setopt hist_reduce_blanks

# Save history entries as soon as they are entered
  setopt inc_append_history

# Share history between different instances of the shell
  setopt share_history

#-----------------------------------------------------------

  if [ -e $HOME/.oh-my-zsh ]; then
    autoload -Uz compinit
    (
      typeset -i updated_at=$(
        date +'%j' -r $HOME/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' $HOME/.zcompdump 2>/dev/null
      )

      if [ $(date +'%j') != $updated_at ]; then
        compinit -i
      else
        compinit -C -i
      fi
    )
  fi

# Oh-My-ZSH #
#-----------------------------------------------------------
if [ -e $HOME/.oh-my-zsh ]; then
  # Theme:
    if [ -e $ZSHcustom ]; then
      ZSH_CUSTOM="$ZSHcustom"
    fi
    ZSH_SPECTRUM_TEXT=${ZSH_SPECTRUM_TEXT:-Arma virumque cano Troiae qui primus ab oris}
    ZSH_THEME="dallas-custom"

  # Progress red dots:
    COMPLETION_WAITING_DOTS="true"

  # Auto-correction:
    ENABLE_CORRECTION="true"

  # History time stamp: (Using strftime function)
    HIST_STAMPS="yyyy.mm.dd"

  # Auto Complete #
  #-----------------------------------------------------------

  # Auto list choices on ambiguous completion
    setopt auto_list

  # Auto use menu completion
    setopt auto_menu

  # Move cursor to end if word had one match
    setopt always_to_end

  # Select completions with arrow keys
    zstyle ':completion:*' menu select

  # Group results by category
    zstyle ':completion:*' group-name ''

  # Enable approximate matches for completion
    zstyle ':completion:::::' completer _expand _complete _ignored _approximate

  # Plugins:
  #-----------------------------------------------------------

  # Plugins:
    # Standard:   ~/.oh-my-zsh/plugins/*
    # Custom:     ~/.oh-my-zsh/custom/plugins/

    plugins=(
      colored-man-pages colorize command-not-found copydir cp extract git \
      history-substring-search per-directory-history rsync screen themes \
      tmux vi-mode z zsh-autosuggestions zsh-syntax-highlighting
    )

  #-----------------------------------------------------------

  # Source Oh My ZSH script:
    source $ZSH/oh-my-zsh.sh

      # User Configuration #
  #-----------------------------------------------------------

  # Manually set language:
    ## export LANG=en_US.UTF-8

    # SSH:
      ## export SSH_KEY_PATH="~/.ssh/rsa_id"

    # Personal aliases: (Overrides oh-my-zsh defaults)
      # Define aliases within the ZSH_CUSTOM folder
        # Full list of active aliases: run `alias`

      # Examples:
        ## alias zshconfig="mate ~/.zshrc"
        ## alias ohmyzsh="mate ~/.oh-my-zsh"
fi
