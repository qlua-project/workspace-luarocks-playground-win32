LuaRocks

the package manager for the Lua modules

https://luarocks.github.io/luarocks/releases/
  luarocks-3.11.1.tar.gz
  luarocks-3.11.1-windows-32.zip (luarocks.exe stand-alone Windows 32-bit binary)
  luarocks-3.11.1-windows-64.zip (luarocks.exe stand-alone Windows 64-bit binary)
  luarocks-3.11.1-linux-x86_64.zip (luarocks stand-alone Linux x86_64 binary)
  luarocks-3.11.1-win32.zip (legacy Windows package, includes Lua 5.1)


https://github.com/luarocks/luarocks/blob/main/docs/installation_instructions_for_windows.md

2 methods

https://luarocks.github.io/luarocks/releases/luarocks-3.11.1-win32.zip

 - if you already have a Lua installation
   single binary luarocks-3.11.1-windows-64.zip - unpack it and you'll have a luarocks.exe ready to use
 - package which includes Lua 5.1 + LuaRocks in source format
   luarocks-3.11.1-win32.zip

second method
 - you can use your own Lua interpreter (run INSTALL /?)
 - it is recommended to use the Visual Studio Command Prompt
 - https://github.com/luarocks/luarocks/blob/main/docs/installation_instructions_for_windows.md#making-a-self-contained-installation
      SET PREFIX=C:\mypackage
      INSTALL /P %PREFIX% /CONFIG %PREFIX%\luarocks
 - copy of LuaRocks will ignore %LUAROCKS_CONFIG% environment variable
      C:\mypackage\luarocks\config.lua
 - option in those cases is to provide an URL
      repositories = {
        "http://www.example.com/rocks/"
      }
 - to use your own interpreter, you can pass its path using the /LUA variable
   (or /BIN, /LIB and /INC explicitly, if you have a custom directory structure)
   also, you can set variable in your configuration file directly
      lua_interpreter
 - as LuaRocks must compile additional rocks installed with the same runtime as the interpreter,
   an important element is the runtime libraries used by the interpreter
   LuaRocks will analyse the executable found

settings

 - /P dir  - where to install (%PROGRAMFILES(X86)%\LuaRocks_version_)

 - /TREE dir      - root of local tree of installed rocks
                    (x64 Lua interpreter - %PROGRAMFILES%\LuaRocks\systree)
                    (x32 Lua interpreter - %PROGRAMFILES(X86)%\LuaRocks\systree)
 - /SCRIPTS dir   - commandline scripts installed by rocks
                    {TREE}/bin
 - /CONFIG dir    - location for config file
                    same as /P option by default
 - /SELFCONTAINED - sets the /TREE and /CONFIG options to the same location as /P
                    sets /NOREG
                    the only option NOT self contained is the user rock tree
                  ! don't use that if you create a self contained installation

 - /LV version - Lua version to use (5.1, 5.2, 5.3, or 5.4)
 - /LUA dir    - location where Lua is installed (c:\lua\5.1)
 - /INC dir    - overrides /LUA sub directory /include
 - /LIB dir    - overrides /LUA sub directory /lib
 - /BIN dir    - overrides /LUA sub directory /bin
 - /L          - install own copy of Lua 5.1


https://github.com/luarocks/luarocks/blob/main/docs/using_luarocks.md

 - luarocks 
   luarocks help install
   luarocks install dkjson

 - luarocks show dkjson

    >  dkjson 2.5-2 - David Kolf's JSON module for Lua
    >
    >  dkjson is a module for encoding and decoding JSON data. It supports UTF-8.
    >
    >  JSON (JavaScript Object Notation) is a format for serializing data based on the
    >  syntax for JavaScript data structures.
    >
    >  dkjson is written in Lua without any dependencies, but when LPeg is available
    >  dkjson uses it to speed up decoding.
    >
    >  License:  MIT/X11
    >  Homepage:   http://dkolf.de/src/dkjson-lua.fsl/
    >  Installed in:   /usr/local
    >
    >  Modules:
    >    dkjson (/usr/local/share/lua/5.3/dkjson.lua)

 - print(package.path)
   print(package.cpath)

 - luarocks path --bin
   eval "$(luarocks path --bin)"


https://github.com/luarocks/luarocks/blob/main/docs/luarocks.md
   command-line interface for LuaRocks

   luarocks [--server=<server> | --only-server=<server>] [--tree=<tree>] [--only-sources=<url>] [--deps-mode=<mode>] [<VAR>=<VALUE>]... <command> [<argument>]


https://github.com/luarocks/luarocks/blob/main/docs/config_file_format.md
   LuaRocks configuration file


https://github.com/luarocks/luarocks/blob/main/docs/luarocks_admin.md
   repository management tool for LuaRocks

 - help           - Help on commands.
 - make-manifest  - Compile a manifest file for a repository.
 - add            - Add a rock or rockspec to a rocks server.
 - remove         - Remove a rock or rockspec from a rocks server.
 - refresh-cache  - Refresh local cache of a remote rocks server.

