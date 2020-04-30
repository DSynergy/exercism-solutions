# Load rvm so you can access Ruby
source "$HOME/.rvm/scripts/rvm"

# Take you to the dir of a file in a gem. e.g. `2gem rspec`
2gem () {
  cd "$(dirname $(gem which $1))"
}

# # git auto-completion
source ~/.git-completion.bash
#
# # enables 'git hub'
eval "$(hub alias -s)"

# Git aliases
alias gitclean="git branch --merged | grep -v "\*" | xargs -n 1 git branch -d"
alias gs="git status"
alias gd="git diff --patience --ignore-space-change"
alias gc="git checkout"
alias gb="git branch"
alias ga="git add"
alias gaa="git add --all"
alias gh="git hist"
alias gm="git commit -m"


alias python_pry="python manage.py shell_plus --ipython"
alias gpl="git log --graph --abbrev-commit --decorate --date=relative --all"

# fancy ls command
# -l  long format
# -F  / after dirs, * after exe, @ after symlink
# -G  colorize
# -g suppress owner
# -o suppress group
# -h humanize sizes
# -q print nongraphic chars as question marks
alias l="ls -lFGgohq"

# give the fullpaths of files passed in argv or piped through stdin
function fullpath {
  ruby -e '
    $stdin.each_line { |path| puts File.expand_path path }  if ARGV.empty?
    ARGV.each { |path| puts File.expand_path path }         unless ARGV.empty?
  ' "$@"
}

# Enable git's tab-completion library
source /usr/local/etc/bash_completion.d/git-completion.bash

# Shortcut for bundle exec
alias be="bundle exec"

# Prompt
  function parse_git_branch {
    branch=`git rev-parse --abbrev-ref HEAD 2>/dev/null`
    if [ "HEAD" = "$branch" ]; then
      echo "(no branch)"
    else
      echo "$branch"
    fi
  }

  function prompt_segment {
    # for colours: http://en.wikipedia.org/wiki/ANSI_escape_code#Colors
    # change the 37 to change the foreground
    # change the 45 to change the background
    if [[ ! -z "$1" ]]; then
      echo "\[\033[${2:-37};45m\]${1}\[\033[0m\]"
    fi
  }

  function build_mah_prompt {
    # time
    ps1="$(prompt_segment " \@ ")"

    # cwd
    ps1="${ps1} $(prompt_segment " \w ")"

    # git branch
    git_branch=`parse_git_branch`
    if [[ ! -z "$git_branch" ]]
    then
      ps1="${ps1} $(prompt_segment " $git_branch " 32)"
    fi

    # next line
    ps1="${ps1}\n\$ "

    # set prompt output
    PS1="$ps1"
  }

  PROMPT_COMMAND='build_mah_prompt'

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

##Gu
# command line search google and wikipedia
function google() {
  local s="$_"
  local query=
  case "$1" in
  '') ;;
  that) query="search?q=${s//[[:space:]]/+}" ;;
  *) s="$*"; query="search?q=${s//[[:space:]]/+}" ;;
  esac
  open -a firefox "http://www.google.com/${query}"
  }

function wiki() {
  local s="$_"
  local query=
  case "$1" in
  '') ;;
  that) query="${s//[[:space:]]/_}" ;;
  *) s="$*"; query="${s//[[:space:]]/_}" ;;
  esac
  open -a firefox "https://en.wikipedia.org/${query}"
  }

  # ls automatically after cd
function cs() {
  if [ $# -eq 0 ]; then
  cd && ls
  else
  cd "$*" && ls
  fi
  }

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
