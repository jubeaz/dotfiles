# virtualenv
% python, virtualenv


## env - create
```bash
virtualenv --python=<version|python3> <env_name|venv>
```

## env - activate
```bash
source <env_name>/bin/activate
```

## env - install requirements
```bash
pip3 install -r requirements.txt
```

## env - install with setup tools
```bash
pip3 install .
```

## env - upgrade requirements
```bash
pip3 install -r requirements.txt --upgrade
```

## env - deactivate
```bash
deactivate
```

## remove project
```bash
rm -rf ./<env_name|venv>
```

## packages - list outdated
```bash
pip3 list --outdated
```

## packages - upgrade
```bash
pip3 install --upgrade
```

## packages - generate requierements
```bash
pip3 freeze > requirements.txt 
```
