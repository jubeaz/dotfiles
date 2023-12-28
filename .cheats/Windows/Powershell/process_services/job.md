# pwsh

#plateform/windows #target/local #cat/UTILS #tag/powershell 


## job - start binary
```powershell
Start-Job -Name <job_name> -ScriptBlock {Start-Process <bg_binary> -ArgumentList "<bg_binary_args>".split(" ")} 
```

## job - start script
```powershell
Start-Job -Name <job_name> -ScriptBlock {<ps_script>} 
```

## job - list
```powershell
Receive-job -IncludeChildJob -Name <job_name>
```

## job - get properties
```powershell
get-job -Name <job_name> Select-Object -Property * 
```

## job - get result 
```powershell
Receive-job -Name <job_name> -Keep
```

## job - get result (reason) 
```powershell
(get-job -name chisel).ChildJobs[0].JobStateInfo.Reason
```

## job - stop
```powershell
stop-job -Name <job_name>
```

## job - delete
```powershell
Remove-Job -Name <job_name>
```