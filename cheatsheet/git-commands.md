# Git Commands

## 分支

```
# 列出本地端的分支
git branch

# 列出遠端的分支
git branch -r

# 移除本地端的分支
git branch -d <branch_name>

# 移除遠端的分支 (下法一)
git push -d <remote_name> <branch_name>

# 移除遠端的分支 (下法二)
git push <remote_name> :<branch_name>

# 如果遠端的分支已經被刪除，而本地端對應的分支依然存在，則可用以下指令移除那些本地端的分支
git remote prune <remote_name> --dry-run
git remote prune <remote_name>
```

## 提交記錄

列出單一檔案的提交紀錄

```
git log -p <file_path>
```

## Pull and Push

```
# 將遠端的 master, develop 分支拉到本地端
git checkout master
git pull
git checkout develop
git pull

# 在本地端的結束 feature 分支
git checkout <feature_branch>
git flow feature finish

# 在本地端發一個版本出來
git flow release start 1.0.0
git flow release finish 1.0.0

# 同步本地端的分支到遠端的分支
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
# at develop
git checkout master
# at master
git merge develop
git push
git push origin develop
```
