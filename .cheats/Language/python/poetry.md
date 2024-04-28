# poetry
% python, virtual env


## add from requirements.txt
```bash
cat requirements.txt | grep -E '^[^# ]' | cut -d= -f1 | xargs -n 1 poetry add
```

## init (existing)
```bash
cd pre-existing-project ; petry init
```


## list envs
```bash
poetry env list --full-path
```

## remove env
```bash
poetry env remove <poetry_env>
```