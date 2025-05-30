# sqlite3

% sqlite, database, db
#plateform/linux  #target/local  #protocol/mysql  
## open sqlite file
#cat/ATTACK/CONNECT 
```bash
sqlite3  -readonly <file_path>  .fullschema
```

## help
#cat/UTILS
```
.help
```

## command execution (shell)
#cat/UTILS
```
.shell <cmd|id>
```

## command execution (system)
#cat/UTILS
```
.system <cmd|id>
```

## Show schema and the content of sqlite_stat tables
#cat/UTILS
```
.fullschema
```

## table desc
```
PRAGMA table_info(<table|users>);
```

## select
#cat/UTILS
```
select * from <table|users>;
```
