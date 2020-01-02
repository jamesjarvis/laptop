###########
# Aliases

# File navigation
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias show_hidden_files="defaults write com.apple.finder AppleShowAllFiles YES"
alias hide_hidden_files="defaults write com.apple.finder AppleShowAllFiles NO"

# Randy
alias generate_secure_string="openssl rand -base64 32"

# Dev shortcuts
alias vsdiff="code --new-window --diff"
alias y="yarn"
alias ya="yarn add"
alias yd="yarn add -D"
alias yr="yarn remove"

# IP lookup
alias ip="dig +short myip.opendns.com A @resolver1.opendns.com"
alias ip4="dig +short myip.opendns.com A @resolver1.opendns.com"
alias ip6="dig +short -6 myip.opendns.com AAAA @resolver1.ipv6-sandbox.opendns.com"
alias iplocal="ipconfig getifaddr en0"

# Speedtest (uses 100mb data)
alias speed="wget -O /dev/null http://cachefly.cachefly.net/100mb.test"

# Flush DNS Cache
alias flush_dns_cache="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

# Updates package managers and installs new updates.
alias update="brew update; brew upgrade; brew cleanup"

# Pastes SSH public key to the clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

function clone {
  git clone gh:$1
}

function yat {
  yarn add $1
  yarn add -D @types/$1
}

function yrt {
  yarn remove $1 @types/$1
}

function porthog {
  PORT=$1
  echo `lsof -ti tcp:$PORT`
}

function freeport {
  PORT=$1
  PID=`lsof -ti tcp:$PORT`
  if [ -z "$PID"]; then
    echo "No process running on port $PORT"
  else
    kill -KILL $PID
  fi
}