# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 

## recyclebin - list (detailed)
```powershell
(( New-Object -ComObject shell.application).Namespace(10)).Items()
```

## recyclebin - list (full)
```
https://jdhitsolutions.com/blog/powershell/7024/managing-the-recycle-bin-with-powershell/
```

## recyclebin - get recycle bin object 
```powershell
$rb = (New-Object -ComObject shell.application).Namespace(10) 
```



## recyclebin - list 
```powershell
( New-Object -ComObject shell.application).Namespace(10)).Items()
```

## recyclebin - restore
```powershell
(( New-Object -ComObject shell.application).Namespace(10)).Items() | %{Copy-Item $_.Path ("C:\Temp\{0}" -f $_.Name)}
```

## recyclebin - list (from drive) 
```powershell
Get-ChildItem -LiteralPath 'C:\$Recycle.Bin' -File -Force -Recurse -ErrorAction SilentlyContinue
```

