# Visual Studio
#plateform/windows #target/local  #cat/UTILS

## build projet
C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\
C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE
https://github.com/MicrosoftDocs/visualstudio-docs/blob/main/docs/ide/reference/devenv-command-line-switches.md
```powershell
devenv.exe <solution_path>\<solution>.sln /build <solution_mode|Release> /project <project_relative_path>\<project>.csproj /projectconfig <project_mode|Release> /out "<solution_path><project>-build-logs.txt"
```

## rebuild projet
C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\
```powershell
devenv.exe <solution_path>\<solution>.sln /rebuild <solution_mode|Release> /project <project_relative_path>\<project>.csproj /projectconfig <project_mode|Release> /out "<solution_path><project>-build-logs.txt"
```

## clean projet
C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\IDE\
```powershell
devenv.exe <solution_path>\<solution>.sln /Clean <solution_mode|Release> /project <project_relative_path>\<project>.csproj /projectconfig <project_mode|Release> /out "<solution_path><project>-build-logs.txt"
```

## build solution
'Release|x64'
```powershell
devenv.exe <solution_path>\<solution>.sln /build <solution_mode|Release> /out "<solution_path>\solution-build-logs.txt"
```

## rebuild solution
```powershell
devenv.exe <solution_path>\<solution>.sln /rebuild <solution_mode|Release> /out "<solution_path>\solution-build-logs.txt"
```

## clean solution
```powershell
devenv.exe <solution_path>\<solution>.sln /clean /out "<solution_path>\solution-build-logs.txt"
```

= solution_path: c:\shared\