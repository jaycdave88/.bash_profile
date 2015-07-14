# System-wide .profile for sh(1)

if [ -x /usr/libexec/path_helper ]; then
        eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
        [ -r /etc/bashrc ] && . /etc/bashrc
fi

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

  
# Custom commands
  alias server8="python -m SimpleHTTPServer 8000"
  alias pc="RAILS_ENV=production bundle exec rake assets:precompile"
  echo "server8" '|' "findme" '|' "move" '|' "pc"

  findme(){
    echo "What do you like the path for?"
    read -r CHOISE
    find . -name $CHOISE
  }

  move(){
    echo "What do you want to move"
    read -r SOURCE
    echo "Where would you like to move it?"
    read -r DESTINATION
    mv $SOURCE $DESTINATION
  }

  clean(){
     ME="$USER"
     killall -u $ME
  }

# Custom navigation:
  alias home="cd ~/Desktop"
  alias code="cd ~/Desktop/CODE"
  alias etc="cd /etc"

# Custom GIT commands:
  alias st="git status"
  alias co="git checkout"
  alias push="git push"
  alias add="git add -A"
  alias commit="git commit -m"