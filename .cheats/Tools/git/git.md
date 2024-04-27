# git

#plateform/multiple #target/local #cat/UTILS 

## config - user name
```bash
git config --global user.name <name>
```

## config - user email
```bash
git config --global user.email <email>
```


## Initializes a git repository
```
git init
```

## clone -  with submodules 
```
git clone -b <branch_name> --recurse-submodules <repository> <clone_directory>
```

## remote - view all available remote
```
git remote --verbose
```

## remote - add a remote
```
git remote add <remote_name> <remote_url>
```

## remote - rename a remote
```
git remote rename <old_remote_name> <new_remote_name>
```

## remote - remove a remote
```
git remote remove <remote_name>
```

## Checkout to branch
```
git checkout <branch>
```

## Displays the current status of a git repository
```
git status
```

## Displays unstaged changes for file
```
git diff <unstaged_files>
```

## Stage single or multiple files
```
git add <changed_files>;
```

## Stage all files in project
```
git add -A
```

## Saves the changes to a file in a commit
```
git commit -m <message>
```

## Pushes committed changes to remote repository
```
git push -u <remote_name> <branch_name>
```

## Pushes changes to a remote repository overwriting another branch
```
git push <remote_name> <branch>:<branch_to_overwrite>
```

## Overwrites remote branch with local branch changes
```
git push <remote_name> <branch_name> -f
```

## pull - simple
equiv to git fetch followed by git merge FETCH_HEAD 
```bash
git pull --ff-only
```

## Merges changes on one branch into current branch
```
git merge <branch_name>
```

## Abort the current conflict resolution process, and try to reconstruct the pre-merge state.
```
git merge --abort
```

## Displays log of commits for a repo
```
git log
```

## Displays formatted log of commits for a repo
```
git log --all --decorate --oneline --graph
```

## Clear everything
```
git clean -dxf
```

## Sign all commits in a branch based on master
```
git rebase master -S -f
```

## Checkout a branch from a fork
```
git fetch origin pull/<pr_number>/head:pr/<pr_number> && git checkout pr/<pr_number>
```


## Skip git hooks
```
git commit --no-verify
```

## Create new branch from current HEAD
```
git checkout -b <new_branch_name>
```

## pull remote branch and switch to it
```
git checkout -b <new_branch_name> <remote>/<branch_name>
```

## git dump
```
gitdumper <url>/.git/ <destination_dir>
```

= remote: origin
