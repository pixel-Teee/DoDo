set SCRIPT_DIR=%~dp0

set ROOT_DIR=%SCRIPT_DIR%..\..\..

if [%1] == [] (
    set BUILD_DIR=%ROOT_DIR%\build\android_gradle
) else (
    set BUILD_DIR=%1
)

call cmake.exe -DPROJECT_NAME="DoDo"^
                -DANDROID_API=30^
                -DARCH_ABI="arm64-v8a;armeabi-v7a"^
                -DANDROID_MANIFEST="%ROOT_DIR%\app\android\AndroidManifest.xml"^
                -DJAVA_DIRS="%ROOT_DIR%\app\android\java"^
                -DRES_DIRS="%ROOT_DIR%\app\android\res"^
                -DOUTPUT_DIR="%BUILD_DIR%"^
                -DASSET_DIRS=""^
                -DJNI_LIBS_DIRS=""^
                -DNATIVE_SCRIPT="%ROOT_DIR%\CMakeLists.txt"^
                -P "%ROOT_DIR%\Tools\cmake\create_gradle_project.cmake"

pause