@echo off & setlocal enableDelayedExpansion
rem 1 ������ʾ�����ļ�λ�ã�ֱ�Ӵ��ļ��и���·�����������
REM set /p path=please paste/input your Excel Path :
rem Please enter the character to be replaced:
set /p str=��������Ҫ�滻���ַ�:
rem Please enter the target character
set /p ChangeStr=�������滻����ַ�:

REM ��ǰ·��
set path=%~dp0

cd /d %path%

rem 2 ����ͨ��ѭ��ȥ�޸��ļ���������ļ�����
for /f "delims=!" %%i in ('dir /aa /b %path%') do (
::echo in progressing %%i_%%j_%%k
set str1=%%i
set str2=!str1:%str%=%ChangeStr%!
echo str1 is !str1! str2 is !str2!
ren "!str1!" "!str2!"

)

rem 3 �����������ļ�λ��
echo.
echo.
echo its ok now,the file locate at %path%

rem ���ļ�λ��
REM C:\Windows\explorer.exe %path%
��������������������������������
��Ȩ����������ΪCSDN�������������ƿ񡹵�ԭ�����£���ѭCC 4.0 BY-SA��ȨЭ�飬ת���븽��ԭ�ĳ������Ӽ���������
ԭ�����ӣ�https://blog.csdn.net/qq_28299311/article/details/102721017