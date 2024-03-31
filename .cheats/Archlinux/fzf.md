# fzf

% fzf
#plateform/linux #target/local #cat/UTILS 

## pacman installed
```bash
pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'
```

## pacam available
```bash
 pacman -Slq | fzf --preview 'pacman -Si {}' --layout=reverse
```

## wordlist
```bash
find /usr/share/seclists /usr/share/wordlists /usr/share/dirb -type f | fzf --preview 'head -n 25 {}' --layout=reverse  --bind 'enter:execute(cat {} | less)'
```
