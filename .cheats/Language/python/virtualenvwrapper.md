# virtualenvwrapper
% python, virtualenv, virtualenvwrapper

## virtualenvwrapper - url
```
https://virtualenvwrapper.readthedocs.io/en/latest/
```


## virtualenvwrapper - desc
```
is a set of extensions to virtualenv. It gives you commands like mkvirtualenv, lssitepackages, and especially workon for switching between different virtualenv directories. This tool is especially useful if you want multiple virtualenv directories.
```

## install
```bash
pip install --user virtualenvwrapper
```

## config
```bash
export WORKON_HOME=$HOME/local/virtualenvs
export PROJECT_HOME=$HOME/dev
source /usr/bin/virtualenvwrapper.sh
```


## create
```bash
mkvirtualenv [-a project_path] [-i package] [-r requirements_file] [virtualenv options] ENVNAME
```

## activate
```bash
work_on
```

## activate env
```bash
work_on <en>
```
