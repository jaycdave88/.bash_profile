# System-wide .profile for sh(1)

if [ -x /usr/libexec/path_helper ]; then
        eval `/usr/libexec/path_helper -s`
fi

if [ "${BASH-no}" != "no" ]; then
        [ -r /etc/bashrc ] && . /etc/bashrc
fi

LS_COLORS=$LS_COLORS:'di=0;31:' ; export LS_COLORS
  
# Custom commands
  alias server8="python -m SimpleHTTPServer 8000"
  echo "server8 => Localhost:8000"

# Custom navigation:
  alias home="cd ~/Desktop"
  alias code="cd ~/Desktop/CODE"
  alias etc="cd /etc"

# Custom GIT commands:
  alias st="git status"
  alias co="git checkout"
  alias push="git push"
  alias add="git add -A"

