# apt

% apt
#plateform/linux #target/local  #cat/UTILS 

## install from package (dpkg)
```bash
sudo dpkg -i <deb_package_name>
```

## install from package (apt fail without internet)
```bash
sudo apt-get install <deb_package_name>
```

## list dependancies of a package
```bash
 dpkg -I <deb_package_name> | grep Depends
 ```