# Smali Patcher for linux

## Reference
https://gitlab.com/JFronny/smalipatcher/-/tree/master/android

## How to use
```
wget -q https://gitlab.com/JFronny/smalipatcher/-/jobs/artifacts/master/download?job=android -O tmp.zip && unzip tmp.zip && rm tmp.zip
./dotnet-install.sh -c 5.0
```
Edit file cp_framework.sh delete ../komodo if use adb

```
git clone https://github.com/anestisb/vdexExtractor vdx
cd vdx
./make.sh
cp bin/vdexExtractor ..
cd ..
./smalipatcher.sh
```
