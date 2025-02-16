# pipx

## Reinstall all packages
Fix invalid interpreter
```bash
pipx reinstall-all
```

## List all installed
```bash
pipx list
```


## Install packages to an existing venv
```bash
pipx inject <venv> <package>==<version>
```

## Install packages from git (branch)
```bash
pipx install git+<repo>@<branch>
```
