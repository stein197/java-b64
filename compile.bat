@ECHO off
IF "%1" == "" (
	ECHO Creating java source code files list...
	DIR /B /S *.java > sources.txt
	ECHO Compiling all source files...
	javac -d bin -cp .\src;lib\junit-4.13-beta-3.jar;lib\hamcrest-core-1.3.jar;lib\JUnitParams.jar -encoding UTF-8 @sources.txt
	ECHO Finished
) ELSE (
	javac -d bin -cp .\src;lib\junit-4.13-beta-3.jar;lib\hamcrest-core-1.3.jar;lib\JUnitParams.jar -encoding UTF-8 .\src\%1.java
)
