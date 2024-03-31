# find

% find
#plateform/linux #target/local #cat/UTILS 

## exclude one path (only name for pattern)
```bash
-path <exclude_path> -prune -o
```

## exclude multiple path
```bash
-type d \( -path <exclude_path_1> -o -path <exclude_path_2> -o -path <exclude_path_3> \) -prune -o 
```

## exclude multiple path
```bash
-type d \( -path <exclude_path_1> -o -path <exclude_path_2> -o -path <exclude_path_3> \) -prune -o 
```

## find files owned by a group
-o -group group_2
```bash
-group <group>
```

## find files owned by a user
-o -group user_2
```bash
-user <user> 2>/dev/null
```

## modified during the last x minutes
```bash
-mmin -30 -exec ls -lh {} \;
```

## modified during the last x days
```bash
-mtime -1 -exec ls -lh {} \;
```

## SUID files
```bash
-type f -perm -u=s
```

## SGID files
```bash
-type f -perm -g=s
```
## SUID and SGID files
```bash
-type f \( -perm -g+s -o -perm -u+s \)
```

## pipe into grep
```bash
-exec ls -lad  "{}" 2>/dev/null \; | grep -iIe "passw\|pwd"
```

## follow link
```bash
-L
```