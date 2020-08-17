#!/bin/bash -e
commit_message="$1"
git add. -A
git commit -m "$commit message"
git push "https://github.com/kondalreddyv"
#replace Branch ID with commit code
git reset "Branch ID"
#moves pointer back to previous HEAD 
git reset --softHEAD@{1}
git commit -m "revert to Reset Branch ID"
#updates working copy to reflect the new commit 
git reset --hard
