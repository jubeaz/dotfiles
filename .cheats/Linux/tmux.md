# tmux

% tmux
#plateform/linux #target/local #cat/UTILS 

## sessions - list

```bash
tmux ls
```

## sessions - new
: new -s <session_name>
```bash
tmux new -s <session_name>
```

## sessions - kill
```bash
tmux kill-session -t <session_name>
```

## sessions - kill all but current
```bash
tmux kill-session -a
```

## sessions - attach
```bash
tmux a -t <session_name>
```

## sessions - ctrl + b
```bash
rename: prefix - $
detatch: prefix -  d
```


## windows - ctrl + b
```bash
create : prefix - c
rename : prefix - ,
close  : prefix - & 
list   : prefix - w
next   : prefix - n
prev   : prefix - shift + n
direct : prefix - [0...9]
move left : prefix - :swap-window -t -1
swap      : prefix - :swap-window -s 2 -t 1 
```

## pane - ctrl + b 
```bash
split v : prefix - v
split h : prefix - s
move left : prefix - {
move right : prefix - }
zoom : prefix - z
convert to window : prefix - !
close : prefix - x
```

## save sessions (resurect)
```bash
prefix ctrl + s
```

## restore sessions (resurect)
```bash
prefix ctrl + r
```

## logging - start / stop current pane 
```bash
prefix shift + p
```

## logging - save pane history
```bash
prefix shift + p
```


## logging - screen capture of current pane
```bash
prefix alt + p
```