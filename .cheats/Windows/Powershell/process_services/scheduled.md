
# pwsh
% windows, scheduled tasks

#plateform/windows #target/local #cat/RECON/SCHEDULED-TASK #tag/powershell 

## scheduled tasks - find all  
```powershell
Get-ScheduledTask | select TaskName,State
```