cd ..
cd ..
mkdir build
cd build
mkdir Windows
cd Windows
cmake ../../ -DUSE_EDITOR=TRUE -G"Visual Studio 16 2019"
pause