@echo off
REM 
REM Example batch script to copy windows required DLLs and registry
REM 

mkdir rootfs\x86_windows\Windows\System32
mkdir rootfs\x86_windows\Windows\System32\drivers
mkdir rootfs\x86_windows\Windows\registry
mkdir rootfs\x8664_windows\Windows\System32
mkdir rootfs\x8664_windows\Windows\SysWOW64
mkdir rootfs\x8664_windows\Windows\registry

REM 
REM  Registry
REM 
echo f | xcopy /f /y C:\Users\Default\NTUSER.DAT rootfs\x8664_windows\Windows\registry\NTUSER.DAT
reg save hklm\system rootfs\x8664_windows\Windows\registry\SYSTEM
reg save hklm\security rootfs\x8664_windows\Windows\registry\SECURITY
reg save hklm\software rootfs\x8664_windows\Windows\registry\SOFTWARE
reg save hklm\hardware rootfs\x8664_windows\Windows\registry\HARDWARE
reg save hklm\SAM rootfs\x8664_windows\Windows\registry\SAM
xcopy /d /y rootfs\x8664_windows\Windows\registry\* rootfs\x86_windows\Windows\registry\

REM 
REM  Dlls
REM
if exist %WINDIR%\SysWOW64\advapi32.dll xcopy /f /y %WINDIR%\SysWOW64\advapi32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\rpcrt4.dll xcopy /f /y %WINDIR%\SysWOW64\rpcrt4.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\crypt32.dll xcopy /f /y %WINDIR%\SysWOW64\crypt32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\iphlpapi.dll xcopy /f /y %WINDIR%\SysWOW64\iphlpapi.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\kernel32.dll xcopy /f /y %WINDIR%\SysWOW64\kernel32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\KernelBase.dll xcopy /f /y %WINDIR%\SysWOW64\KernelBase.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\mpr.dll xcopy /f /y %WINDIR%\SysWOW64\mpr.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\msvcp60.dll xcopy /f /y %WINDIR%\SysWOW64\msvcp60.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\msvcrt.dll xcopy /f /y %WINDIR%\SysWOW64\msvcrt.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\netapi32.dll xcopy /f /y %WINDIR%\SysWOW64\netapi32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\ntdll.dll xcopy /f /y %WINDIR%\SysWOW64\ntdll.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\ole32.dll xcopy /f /y %WINDIR%\SysWOW64\ole32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\urlmon.dll xcopy /f /y %WINDIR%\SysWOW64\urlmon.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\user32.dll xcopy /f /y %WINDIR%\SysWOW64\user32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\wsock32.dll xcopy /f /y %WINDIR%\SysWOW64\wsock32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\version.dll xcopy /f /y %WINDIR%\SysWOW64\version.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\winmm.dll xcopy /f /y %WINDIR%\SysWOW64\winmm.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\comctl32.dll xcopy /f /y %WINDIR%\SysWOW64\comctl32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\wininet.dll xcopy /f /y %WINDIR%\SysWOW64\wininet.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\psapi.dll xcopy /f /y %WINDIR%\SysWOW64\psapi.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\userenv.dll xcopy /f /y %WINDIR%\SysWOW64\userenv.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\uxtheme.dll xcopy /f /y %WINDIR%\SysWOW64\uxtheme.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\gdi32.dll xcopy /f /y %WINDIR%\SysWOW64\gdi32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\comdlg32.dll xcopy /f /y %WINDIR%\SysWOW64\comdlg32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\shell32.dll xcopy /f /y %WINDIR%\SysWOW64\shell32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\oleaut32.dll xcopy /f /y %WINDIR%\SysWOW64\oleaut32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\vcruntime140.dll xcopy /f /y %WINDIR%\SysWOW64\vcruntime140.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\winhttp.dll xcopy /f /y %WINDIR%\SysWOW64\winhttp.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\wininet.dll xcopy /f /y %WINDIR%\SysWOW64\wininet.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\ws2_32.dll xcopy /f /y %WINDIR%\SysWOW64\ws2_32.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\msvcr120_clr0400.dll echo f | xcopy /f /y %WINDIR%\SysWOW64\msvcr120_clr0400.dll "rootfs\x86_windows\Windows\System32\msvcr110.dll"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-stdio-l1-1-0.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-stdio-l1-1-0.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-runtime-l1-1-0.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-runtime-l1-1-0.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-math-l1-1-0.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-math-l1-1-0.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-locale-l1-1-0.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-locale-l1-1-0.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-heap-l1-1-0.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-crt-heap-l1-1-0.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-core-synch-l1-2-0.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-core-synch-l1-2-0.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-core-fibers-l1-1-1.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-core-fibers-l1-1-1.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-core-localization-l1-2-1.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-core-localization-l1-2-1.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\downlevel\api-ms-win-core-sysinfo-l1-2-1.dll xcopy /f /y %WINDIR%\SysWOW64\downlevel\api-ms-win-core-sysinfo-l1-2-1.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\shlwapi.dll xcopy /f /y %WINDIR%\SysWOW64\shlwapi.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\SysWOW64\setupapi.dll xcopy /f /y %WINDIR%\SysWOW64\setupapi.dll "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\System32\ntoskrnl.exe xcopy /f /y %WINDIR%\System32\ntoskrnl.exe "rootfs\x86_windows\Windows\System32\"
if exist %WINDIR%\winsxs\amd64_microsoft-windows-printing-xpsprint_31bf3856ad364e35_10.0.17763.194_none_20349c5a971eb293\XpsPrint.dll xcopy /f /y %WINDIR%\winsxs\amd64_microsoft-windows-printing-xpsprint_31bf3856ad364e35_10.0.17763.194_none_20349c5a971eb293\XpsPrint.dll "rootfs\x86_windows\Windows\System32\"

if exist %WINDIR%\System32\ntoskrnl.exe xcopy /f /y %WINDIR%\System32\ntoskrnl.exe "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\advapi32.dll xcopy /f /y %WINDIR%\System32\advapi32.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\kernel32.dll xcopy /f /y %WINDIR%\System32\kernel32.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\KernelBase.dll xcopy /f /y %WINDIR%\System32\KernelBase.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\msvcrt.dll xcopy /f /y %WINDIR%\System32\msvcrt.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\ntdll.dll xcopy /f /y %WINDIR%\System32\ntdll.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\urlmon.dll xcopy /f /y %WINDIR%\System32\urlmon.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\user32.dll xcopy /f /y %WINDIR%\System32\user32.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\ws2_32.dll xcopy /f /y %WINDIR%\System32\ws2_32.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\vcruntime140.dll xcopy /f /y %WINDIR%\System32\vcruntime140.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\downlevel\api-ms-win-crt-stdio-l1-1-0.dll xcopy /f /y %WINDIR%\System32\downlevel\api-ms-win-crt-stdio-l1-1-0.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\downlevel\api-ms-win-crt-runtime-l1-1-0.dll xcopy /f /y %WINDIR%\System32\downlevel\api-ms-win-crt-runtime-l1-1-0.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\downlevel\api-ms-win-crt-math-l1-1-0.dll xcopy /f /y %WINDIR%\System32\downlevel\api-ms-win-crt-math-l1-1-0.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\downlevel\api-ms-win-crt-locale-l1-1-0.dll xcopy /f /y %WINDIR%\System32\downlevel\api-ms-win-crt-locale-l1-1-0.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\downlevel\api-ms-win-crt-heap-l1-1-0.dll xcopy /f /y %WINDIR%\System32\downlevel\api-ms-win-crt-heap-l1-1-0.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\vcruntime140d.dll xcopy /f /y %WINDIR%\System32\vcruntime140d.dll "rootfs\x8664_windows\Windows\System32\"
if exist %WINDIR%\System32\ucrtbased.dll xcopy /f /y %WINDIR%\System32\ucrtbased.dll "rootfs\x8664_windows\Windows\System32\"

exit /b