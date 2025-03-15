@echo off
setlocal
SET "BATCHDIR=%~dp0"
SET "CWD=%BATCHDIR:~0,-1%"
SET "WORKSPACE=%CWD%\..\..\.."
set "LUAWORKSPACE=%WORKSPACE:\=\\%"
set "LUAROCKS_SYSCONFDIR=%WORKSPACE%\luarocks"
"%WORKSPACE%\externals\lua\bin\lua.exe" -e "package.path=\"%LUAWORKSPACE%\\luarocks\\systree\\share\\lua\\5.4\\?.lua;%LUAWORKSPACE%\\luarocks\\systree\\share\\lua\\5.4\\?\\init.lua;\"..package.path;package.cpath=\"%LUAWORKSPACE%\\luarocks\\systree\\lib\\lua\\5.4\\?.dll;\"..package.cpath;local k,l,_=pcall(require,'luarocks.loader') _=k and l.add_context('lua-cjson','2.1.0.10-1')" "%WORKSPACE%\luarocks\systree\lib\luarocks\rocks-5.4\lua-cjson\2.1.0.10-1\bin\lua2json" %*
exit /b %ERRORLEVEL%
