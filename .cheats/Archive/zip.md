# zip

% archive, compress

#plateform/linux #target/local #cat/UTILS 

## create zip file
```
zip <file>.zip <files_to_zip>
```

## zip all the files of current directory
```
zip <file>.zip *
```

## zip folder
```
zip -r <file>.zip <folder>
```

## add file to a zip archive
```
zip -u <file>.zip <file_to_add>
```

## view zip content
```
zipinfo <file>.zip
```

## create zip file with symlink (useful for path traversal)
```
zip --symlinks <file>.zip <symlink_file>
```

## list detailed zip file content
```
unzip -Z <file>.zip
```

## unzip file
```
unzip <file>.zip
```

## unzip file to directory
```
unzip <file>.zip -d <destination_folder>
```

# powershell

#plateform/windows #target/local #cat/UTILS  #tag/powershell 

## unzip file
#plateform/windows #target/local #cat/UTILS #tag/powershell 
```powershell
Expand-Archive -Path <file> -DestinationPath <path>
```

## zip folder
#plateform/windows #target/local #cat/UTILS #tag/powershell 
```powershell
Compress-Archive -Path <folder> -DestinationPath <file>
```