#

            ##::[[---  Oh-My-ZSH Theme ---]]::##

#===========================================================
              ##----- Dallas (Custom) -----##
#===========================================================

# Git #
#-----------------------------------------------------------

  # Branch:
    # Clean (Nothing):
      ZSH_THEME_GIT_PROMPT_CLEAN=""

    # Colors:
      lchar="%{$fg[green]%}%(!.$.%%)%{$reset_color%}"
      rchar="%{$fg[red]%}%(!.#.%%)%{$reset_color%}"

    # Dirty (Add 3 Cyan ✗s):
      ZSH_THEME_GIT_PROMPT_DIRTY="%{$FG[196]%}✗✗✗"

  # Normal User: % || Privileged User / root: #
    ZSH_THEME_GIT_PROMPT_PREFIX=" %{$FG[244]%}@%{$FG[002]%}"

  # Reset Color & Style:
    ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

# Host #
#-----------------------------------------------------------

  # Current Path / Current Branch:
    dir="%{$FG[012]%}%~\$(git_prompt_info)%{$reset_color%}\$(parse_git_dirty)"

  # Host Name:
    host_="%{$FG[010]%}%m%{$fg[white]%}:%{$reset_color%}"

  # Keys:
    set -o emacs

  # Time (24H):
    time_="%{$FG[245]%}%T%{$fg[white]%}|%{$reset_color%}"

# Languages #
#-----------------------------------------------------------

  # Ruby: 
    # Current Version (via RVM):
      if [ -e ~/.rvm/bin/rvm-prompt ]; then
        ruby_="%{$fg[white]%}[%{$fg[magenta]%}\$(~/.rvm/bin/rvm-prompt i v)%{$fg[white]%}]%{$reset_color%}"
      else
        if which rbenv &> /dev/null; then
          ruby_="%{$fg[white]%}[%{$fg[magenta]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg[white]%}]%{$reset_color%}"
        fi
      fi

# User Colors
#-----------------------------------------------------------

  # normal:
    luser_="%{$FG[118]%}%n%{$reset_color%}"

  # root:
    ruser_="%{$fg[red]%}%n%{$reset_color%}"


#===========================================================
                   ##----- Prompt -----##
#===========================================================

if [[ $UID -eq 0 ]]; then
  PROMPT="$time_$ruby_$host_$dir
$rchar "
else
  PROMPT="$time_$ruby_$host_$dir
$luser $lchar "
fi
