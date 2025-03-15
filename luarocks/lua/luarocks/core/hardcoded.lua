local dir = require("luarocks.core.dir")

local function script_path()
   local str = debug.getinfo(2, "S").source:sub(2)
   return str:match("(.*\\)")
end
local harcoded_path = script_path()
local workspace_path = dir.normalize(harcoded_path .. [[..\..\..\..]])

return {
   LUA_DIR=workspace_path..[[\externals\lua]],
   LUA_INCDIR=workspace_path..[[\externals\lua\include]],
   LUA_LIBDIR=workspace_path..[[\externals\lua\lib]],
   LUA_BINDIR=workspace_path..[[\externals\lua\bin]],
   LUA_VERSION=[[5.4]],
   LUA=workspace_path..[[\externals\lua\bin\lua.exe]],
   SYSTEM = [[windows]],
   PROCESSOR = [[x86_64]],
   PREFIX = workspace_path..[[\luarocks]],
   SYSCONFDIR = workspace_path..[[\luarocks]],
   WIN_TOOLS = workspace_path..[[\luarocks/tools]],
   FORCE_CONFIG = true,
}
