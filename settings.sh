# shell

# KEEP COMMAND HISTORY
HISTSIZE=10000000
SAVEHIST=10000000

# git pull --rebase
git config pull.rebase true

# iTerm2 Title
# https://gist.github.com/phette23/5270658
DISABLE_AUTO_TITLE="true"

# include node_modules/.bin in PATH
export PATH="$(yarn global bin):$(yarn bin):$PATH"
