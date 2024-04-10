# cmd.exe

#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT 

## find file - containing a string
```powershell
Get-ChildItem -Path <path|"C:\"> -Force -Recurse -ErrorAction Ignore |  select-string '<pattern>' -List -erroraction 'silentlycontinue' | select Path
```

## find file -  having extension
```powershell
where /R C:\ *.ini
```

## find file -  having Alternate Data Streams
```powershell
gci -recurse | % { gi $_.FullName -stream * } | where stream -ne ':$Data'
```

## find file -  Read display alternate datastream
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