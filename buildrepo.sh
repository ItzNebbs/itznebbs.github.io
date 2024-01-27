echo generating files at $(pwd)
bzip2 -k -f ./Packages
xz -k -f ./Packages

echo building...
echo Packages.bz2 SHA256: $(shasum -a 256 ./Packages.bz2 | sed "s/\  .\/Packages.bz2//g")
echo Packages.bz2 Size: $(wc -c "./Packages.bz2" | awk '{print $1}')
echo Packages.xz SHA256: $(shasum -a 256 ./Packages.xz | sed "s/\  .\/Packages.xz//g")
echo Packages.xz Size: $(wc -c "./Packages.xz" | awk '{print $1}')
