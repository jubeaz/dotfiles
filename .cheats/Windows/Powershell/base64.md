# powershell

#plateform/windows #target/local #cat/UTILS #tag/powershell 

## base64 - encode string
```powershell
[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes("<string>"))
```

## base64 - decode file
```powershell
[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String('<string>'))
```

## base64 - encode file
```powershell
[Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes(get-content <path>))
```

## base64 - decode string
```powershell
[System.Text.Encoding]::Unicode.GetString([System.Convert]::FromBase64String(get-content <path>))
```
