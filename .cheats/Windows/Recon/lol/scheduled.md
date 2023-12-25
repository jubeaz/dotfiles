# windows
% windows, template

#plateform/windows #target/local #cat/RECON/SCHEDULED-TASK



# powershell
% windows, template

#plateform/windows #target/local #cat/RECON/SCHEDULED-TASK #tag/powershell 

## find all scheduled tasks 
```powershell
Get-ScheduledTask | select TaskName,State
```