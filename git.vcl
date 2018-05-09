show branches = "git branch -vv | cat -n{enter}";
show remote branches = "git branch -rvv | cat -n{enter}";
show remotes = "git remote -vv{enter}";
show diff = "git diff{enter}";
show status = "git status{enter}";
show (git log|commits) = "git log --oneline | head -n 10{enter}";
cherry-pick = "git cherry-pick ";
reset hard = "Xgit reset --hard{ctrl+a}{ctrl+f}";
#TODO: make branch <_anything> = "git branch $1 && git checkout $1";

[git] fetch (remotes|all) = "git fetch --all{enter}";
[Git] commit patch = "git commit -p{enter}";

checkout branch 1..99 = "git checkout `git branch -vv | cat -n | egrep '^ *$1[^0-9]' | awk '{print \$2}'`{enter}";
checkout remote branch 1..999 = "git checkout `git branch -rvv | cat -n | egrep '^ *$1[^0-9]' | awk '{print \$2}' | cut -d '/' -f '2-'`{enter}";
delete branch 1..99 = "git branch -d `git branch -vv | cat -n | egrep '^ *$1[^0-9]' | awk '{print \$2}'`{enter}";

merge branch 1..99 = "git merge `git branch -vv | cat -n | egrep '^ *$1[^0-9]' | awk '{print \$2}'`{enter}";

pull branch = "git pull --rebase{enter}";
push branch = "git push{enter}";
