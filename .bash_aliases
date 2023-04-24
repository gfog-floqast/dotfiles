#-----program shortcuts-----
alias python="python3"
alias pip="pip3"
alias vim="nvim"
alias tf="terraform"

#-----alias working with ripgrep-----
rgreplace () {
    rg $1 --files-with-matches | xargs sed -i '' "s/${1}/${2}/g"
}

#-----alias working with base git-----
alias gs="git status"
alias main="co main && git pull origin main"
alias rebasemain="main && co - && git rebase main"
alias stash="git stash"
alias pop="git stash pop"
alias pushit="git push origin HEAD"
alias forceit="git push origin -f HEAD"

amend () {
    git add $1 && git commit --amend
}

co () {
    git checkout $1
}

cobra () {
    git checkout -b $1
}

gDel () {
    git branch -D $1
}

gcp () {
    git cherry-pick $1
}

clone () {
    git clone git@github.com:FloQastInc/$1 ~/projects/floqast/$1 && cd ~/projects/floqast/$1
}

amendall() {
    git add -u && git commit --amend --no-edit && forceit
}