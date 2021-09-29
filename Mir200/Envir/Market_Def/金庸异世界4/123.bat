@echo off & setlocal enableDelayedExpansion
rem 1 这是提示输入文件位置，直接打开文件夹复制路径、黏贴就行
REM set /p path=please paste/input your Excel Path :
rem Please enter the character to be replaced:
set /p str=请输入需要替换的字符:
rem Please enter the target character
set /p ChangeStr=请输入替换后的字符:

REM 当前路径
set path=%~dp0

cd /d %path%

rem 2 这是通过循环去修改文件夹里面的文件名字
for /f "delims=!" %%i in ('dir /aa /b %path%') do (
::echo in progressing %%i_%%j_%%k
set str1=%%i
set str2=!str1:%str%=%ChangeStr%!
echo str1 is !str1! str2 is !str2!
ren "!str1!" "!str2!"

)

rem 3 结束，并打开文件位置
echo.
echo.
echo its ok now,the file locate at %path%

rem 打开文件位置
REM C:\Windows\explorer.exe %path%
————————————————
版权声明：本文为CSDN博主「长生但酒狂」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/qq_28299311/article/details/102721017