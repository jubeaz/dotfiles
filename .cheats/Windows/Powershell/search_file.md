# pwsh

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/powershell 

## find file - containing a string
```powershell
Get-ChildItem -Path <path|"C:\"> -Force -Recurse -ErrorAction Ignore | select-string '<pattern_1|pattern_2>' -List -erroraction 'silentlycontinue' | Select-Object -Unique Path
```

## find file - having extension
```powershell
Get-ChildItem -Recurse -Force -Filter '*.js','*password*' -ErrorAction 'SilentlyContinue' | Select-Object -Unique -property FullName
```

## find file - all hidden (non system)
```powershell
Get-ChildItem -Recurse -Force -ErrorAction 'SilentlyContinue' -Attributes !System+Hidden | Select-Object -Unique -property FullName
```


## find file - having attributes
non-system files (not directories) that are encrypted or compressed
```powershell
Get-ChildItem -Recurse -Force -ErrorAction 'SilentlyContinue' -Attributes !Directory+!System+Encrypted, !Directory+!System+Compressed | Select-Object -Unique -property FullName
```

## find file - having Alternate Data Streams
```powershell
gci -recurse -Force | % { gi $_.FullName -stream * } | where stream -ne ':$Data'
```

## find file - Read display alternate datastream
```powershell 
Get-Content <path> -Stream <stream>
```

## find file - credential manager
```powershell
cmdkey /list
```

## find file - linux strings (Ascii)
```powershell
$AsciiFileContents = Get-Content -Encoding 'UTF7' $File ; $AsciiRegex = [Regex] "[\x20-\x7E]{$MinimumLength,}"; $AsciiRegex.Matches($AsciiFileContents) | ForEach-Object { Write-Output $_.Value }
```

## find file - linux strings (Unicode)
```powershell
$UnicodeFileContents = Get-Content -Encoding 'Unicode' $File ; $AsciiRegex = [Regex] "[\x20-\x7E]{$MinimumLength,}" ; $Results = $AsciiRegex.Matches($AsciiFileContents) | ForEach-Object { Write-Output $_.Value }
```