alias gitCommit=~/fixCommit.sh $1
alias gc='~/gitCheckout.sh'
alias gp='git pull'
alias gb='git checkout -b' 
alias gs='git status'

PREVBRANCH=$(git rev-parse --abbrev-ref HEAD)
export PREVBRANCH

# Map the auto completes
__git_complete gc _git_checkout

