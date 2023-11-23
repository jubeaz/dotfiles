# grep

#plateform/linux #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT

## Search Strings Inside Files
PASSW\|PASSWD\|PASSWORD\|PWD
https://juggernaut-sec.com/password-hunting-lpe/#Hunting_for_Interesting_Strings_Inside_Files
```bash
grep --color=auto -rnw '<path|./>' -iIe "<exp>" --color=always 2>/dev/null
```

# find

## find Interesting Filenames
#plateform/linux #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT
passw\|pwd
https://juggernaut-sec.com/password-hunting-lpe/#Hunting_for_Interesting_Strings_Inside_Files
```bash
find <path|./> -exec ls -lad $PWD/* "{}" 2>/dev/null \; | grep -i -I "<exp>"
```