# Git Commands

## Branch

```
# 列出分支
git branch -a

# 移除本地端分支
git branch -d <branch_name>

# 移除遠端分支
git push <remote_name> :<branch_name>

# 同步本地端關於遠端分支的資訊列表（？）
git remote prune <remote_name> --dry-run
git remote prune <remote_name>
```

## Log

```
git log -p /path/to/file
```

## Pull and Push

```
git checkout master && git pull
git checkout develop && git pull

git checkout <feature_branch>
git flow feature finish

git flow release start 1.0.0
git flow release finish 1.0.0

git push
git push origin master
git push --tags
```

## Rebase

將 feature 分支重新接在 develop 分支之後 (可能會發生衝突)

```
git checkout <feature_branch>
git rebase develop
```

## Merge

```
git checkout master
git merge develop
git push
```
