# Git Commands

## Branch

```
# 列出本地端的所有分支
git branch -a

# 移除本地端的分支
git branch -d <branch_name>

# 移除遠端的分支
git push <remote_name> :<branch_name>

# 更新本地端的遠端分支清單
git remote update <remote_name> --prune
```

## Log

```
git log -p /path/to/file
```

## Pull and Push

```
git checkout master && git pull
git checkout develop && git pull

git checkout <feature_branch_name>
git flow feature finish

git flow release start 1.0.0
git flow release finish

git push
git push origin master
git push --tags
```

## Rebase

```
git checkout <feature_branch_name>
git rebase develop
```

## Merge

```
git checkout master
git merge develop
git push
```
