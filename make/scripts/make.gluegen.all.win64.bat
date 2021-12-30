set THISDIR="C:\git\gluegen\make"

set J2RE_HOME="C:\Program%20Files\Java\jdk-16.0.2"
set JAVA_HOME="C:\Program%20Files\Java\jdk-16.0.2"
set ANT_PATH=C:\ant
set GIT_PATH="C:\Program Files\Git\bin"
set SEVENZIP=C:\Program Files\7-Zip

set CMAKE_PATH=C:\CMake
set CMAKE_C_COMPILER=C:\cygwin64\bin\gcc.exe

set PATH=%J2RE_HOME%\bin;%JAVA_HOME%\bin;%ANT_PATH%\bin;c:\mingw64\bin;%CMAKE_PATH%\bin;%GIT_PATH%;%SEVENZIP%;%PATH%

set LIB_GEN=%THISDIR%\lib
set CLASSPATH=.;%THISDIR%\build-win64\classes
REM    -Dc.compiler.debug=true 
REM    -DuseOpenMAX=true 
REM    -DuseKD=true
REM    -Djogl.cg=1 -D-Dwindows.cg.lib=C:\cygwin64

set SOURCE_LEVEL=1.8
set TARGET_LEVEL=1.8
set TARGET_RT_JAR=C:\jre1.8.0_301\lib\rt.jar

REM set JOGAMP_JAR_CODEBASE=Codebase: *.jogamp.org
set JOGAMP_JAR_CODEBASE=Codebase: *.goethel.localnet

ant -Drootrel.build=build-win64 %1 %2 %3 %4 %5 %6 %7 %8 %9 > make.gluegen.all.win64.log 2>&1

