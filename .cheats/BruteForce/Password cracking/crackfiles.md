# Crack files

% bruteforce, crack, files

#plateform/linux  #target/local  #cat/CRACKING/PASSWORD 

## ZIP - fcrackzip
```
fcrackzip -u -D -p <password_wl> <file>.zip
```

## ZIP - john
```
zip2john <file>.zip > zip.john;
john zip.john
```

## 7z - 7za
```
cat <password_wl> | 7za t <file>.7z
```

## 7z - john
```
./7z2john.pl <file>.7z > 7zhash.john;
john 7zhash.john
```

## PDF - pdfcrack
```
pdfcrack <file>.pdf -w <password_wl>
```

## PDF decrypt - qpdf
```
qpdf --password=<PASSWORD> --decrypt <encrypted_pdf>.pdf <plaintext_pdf>.pdf
```

## keepass kdbx - john
```
keepass2john <file>.kdbx > out.kbdx.hashes && john --wordlist <password_wl> out.kbdx.hashes
```

## XLS PPT DOC - john
```
python3 <path_to_john>/run/office2john.py <file>.xls > out.hash && john --wordlist <password_wl> out.hash
```


