# Crack files

% bruteforce, crack, files

#plateform/linux  #target/local  #cat/CRACKING/PASSWORD 

## ZIP - fcrackzip
```bash
fcrackzip -u -D -p <password_wl> <file>.zip
```

## ZIP - john
```bash
zip2john <file>.zip > zip.john;
john zip.john
```

## 7z - 7za
```bash
cat <password_wl> | 7za t <file>.7z
```

## 7z - john
```bash
./7z2john.pl <file>.7z > 7zhash.john;
john 7zhash.john
```

## PDF - pdfcrack
```bash
pdfcrack <file>.pdf -w <password_wl>
```

## PDF decrypt - qpdf
```bash
qpdf --password=<PASSWORD> --decrypt <encrypted_pdf>.pdf <plaintext_pdf>.pdf
```

## keepass kdbx - john
```bash
keepass2john <file>.kdbx > out.kbdx.hashes && john --wordlist <password_wl> out.kbdx.hashes
```

## XLS PPT DOC - john
```bash
 python2.7 /usr/bin/office2john <file> > out.hash && john out.hash
```

## Online - *2john
```bash
https://hashes.com/en/johntheripper
```
