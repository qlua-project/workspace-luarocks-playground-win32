rocks_trees = {
    sysconfdir..[[/../rockstree]],
    { name = [[user]],
         root    = sysconfdir..[[/../rockstree]],
    },
    { name = [[system]],
         root    = sysconfdir..[[/systree]],
    },
}
variables = {
    MSVCRT = 'VCRUNTIME140',
}
verbose = false   -- set to 'true' to enable verbose output
fs_use_modules = false   -- prevent LuaRocks itself from using installed modules and blocking their files from removal 
