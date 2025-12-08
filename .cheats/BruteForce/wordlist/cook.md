# cook

% wordlist, bruteforce, dict
#plateform/linux #target/local #cat/UTIL/WORDLIST

## _desc
```
An overpower wordlist generator
```

## _repo
```
https://github.com/glitchedgitz/cook
```

## _doc
```
https://github.com/glitchedgitz/cook
```

## _install
```
go install -v github.com/glitchedgitz/cook/v2/cmd/cook@latest
```

## local ingredients - location
```bash
~/.config/cook/cook-ingredients/my.yaml
```

## local ingredients - delete
```bash
cook delete <ingredient_name>
```

## local ingredients - add (list)
```bash
cook add <ingredient_name>=<commasep_word_list> in lists
```

## local ingredients - add (raw-file)
```bash
cook add <ingredient_name>=<file_path> in raw-files
```

## local ingredients - add (list)
```bash
cook add <ingredient_name>=<commasep_word_list> in lists
```

## show - lists
```bash
cook show lists
```

## show - files
```bash
cook show files
```

## show - files (local)
```bash
cook show raw-files
```

## show - ports
```bash
cook show ports
```

## show - functions
```bash
cook show functions
```

## generate - ctf (focused)
```bash
echo "" > wl/<outfile>.wl && cook -<ingredient_name|f>: <file_path>  <ingredient_name|f> <start_yes>-<end_year> special -min 2 >> wl/<outfile>.wl && cook -<ingredient_name|f>: <file_path>  <ingredient_name|f> <start_yes>-<end_year> special -m title -min 2 >> wl/<outfile>.wl
```

## generate - ctf (seasons)
```bash
echo "" > wl/seasons.wl && cook seasons <start_yes>-<end_year> >> wl/seasons.wl && cook seasons <start_yes>-<end_year> -m title -min 2 >> wl/seasons.wl
```


## generate - comma sep ingredient
```bash
cook <commasep_word_list> <start_yes>-<end_year> special -min 2 >> <outfile>.wl
```

## generate - file based ingredient 
```bash
cook -<ingredient_name|f>: <file_path>  <ingredient_name|f> <start_yes>-<end_year> special -min 2 >> <outfile>.wl
```


## methods -leet all 
```bash
-m leet[0]
```

## methods - leet all combinations 
```bash
-m leet[1]
```

