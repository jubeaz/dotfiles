# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 

## recyclebin - list (detailed)
```powershell
(( New-Object -ComObject shell.application).Namespace(10)).Items()
```
## recyclebin - restore
```powershell
(( New-Object -ComObject shell.application).Namespace(10)).Items() | %{Copy-Item $_.Path ("C:\Temp\{0}" -f $_.Name)}
```

## recyclebin - list 
```powershell
Get-ChildItem -LiteralPath 'C:\$Recycle.Bin' -File -Force -Recurse -ErrorAction SilentlyContinue
```

## recyclebin - bins 
```powershell
Get-Chi