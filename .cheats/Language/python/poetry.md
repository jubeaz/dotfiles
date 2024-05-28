# poetry
% python, virtual env


## add from requirements.txt
install pipx install poetry-add-requirements.tx 
```bash
poeareq
```

## init (existing)
```bash
cd pre-existing-project ; poetry init
```

## list envs
```bash
poetry env list --full-path
```

## remove env
```bash
poetry env remove <poetry_env>
```

## poetry shell
exit to exit
```bash
poetry shell
```

## virtualenv in project
```bash
poetry config virtualenvs.in-project true
```

## env - list env
```bash
poetry env list
```


## env - remove
```bash
poetry env remove <current_environment>
```

## poetry shell (anywhere)
```bash
source ~/.local/poetry/virtualenvs/<project>/bin/activate
```

## poetry add dependencies
```bash
poetry add <name>
``` 

## poetry generate requirements.txt
```bash
poetry export --format=requirements.txt > requirements.txt
``` 

