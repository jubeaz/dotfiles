# Postgres

% postgres, 5432, 5433
#plateform/linux  #target/remote  #protocol/postgres #port/5432 #port/5433

## connect
#cat/ATTACK/CONNECT 
```bash
psql -h <host> -p <port|5432> -U <user>
```

## connect database
#cat/ATTACK/CONNECT 
```bash
psql -h <ip> -U <user> -p <port|5432> -d <database>
```

## connect full options
#cat/ATTACK/CONNECT 
```bash
set PGPASSWORD='<password>' && psql -h <ip> -p <port|5432> -U <user> -d <database>
```

## uri connect full options
#cat/ATTACK/CONNECT 
```bash
psql 'postgresql://<user>:<password>@<ip><port|5432>/<database>'
```

## pgpass
```bash
echo "<ip>:<port|5432>:<database>:<user>:<password>" > $HOME/.pgpass && chmod 0600 $HOME/.pgpass
```