# cmd.exe
% windows, scheduled tasks

#plateform/windows #target/local #cat/RECON/SCHEDULED-TASK 


## scheduled tasks - list 
```
schtasks /query /fo LIST /v
```

## scheduled tasks - list one
```
schtasks /query /fo LIST 2>nul | findstr <taskname>
```