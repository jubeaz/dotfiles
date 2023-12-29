
# crunch

% wordlist, bruteforce, dict
#plateform/linux #target/local #cat/UTIL/WORDLIST

## crunch - generate wordlist hex
```bash
crunch <min|2> <max|8> 0123456789ABCDEF -o <output.txt>
```

## crunch - generate wordlist charset
```bash
crunch <min> <max> -f /usr/share/crunch/charset.lst <charset|mixalpha-numeric> -o <output.txt>
```

## crunch - generate wordlist Upper(,) lower(@)x3 numeric(%)x3 special(^)x1
- @ will insert lower case characters
- , will insert upper case characters
- % will insert numbers
- ^ will insert symbols	 
```bash
crunch 8 8 -t <pattern|,@@@%%%^> -o <output.txt>
```

## crunch - generate wordlist contain "password", 2 numbers and 1 special char
```bash
crunch 8 8 -t password%%^ -o <output.txt>
```
