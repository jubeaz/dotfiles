# git

#plateform/multiple #target/local #cat/UTILS 


## config - log submodules
```bash
git config --global diff.submodule log
```

## config - submodule default branch
```bash
git config -f .gitmodules submodule.<module>.branch <branch|master>
```

## config - enable status summary
```bash
git config status.submodulesummary 1
```

## submodule - help
```
https://git-scm.com/book/fr/v2/Utilitaires-Git-Sous-modules
```

## submodule - add 
```bash
git submodule add <repository> <path>
```

## submodule - update
```bash
git submodule update --init --recursive
```

## submodule - pull all
```bash
git submodule foreach git pull origin master
```

## submodule - pull
```bash
git submodule update --remote <module>
```