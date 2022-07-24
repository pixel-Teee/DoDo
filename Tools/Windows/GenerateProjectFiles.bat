cd ..
cd ..
mkdir build
mkdir bin
cd bin
mkdir output
cd ..
cd build
mkdir Windows
cd Windows
cmake ../../ -DUSE_EDITOR=TRUE -G"Visual Studio 16 2019"
pause