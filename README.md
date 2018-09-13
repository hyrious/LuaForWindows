## Require

- Msys2 ( buildtools, curl )

## Make

Notice: Lua itself uses `mkdir -p` and `rm -rf` in its Makefile, which needs environment supporting.
Ensure `mkdir.exe rm.exe`'s folder is in PATH.

```
build
```

You will see something like:

```
Unzipping lua-5.3.5.tar.gz ..
Ok.
Building lua-5.3.5 ..
Check version:
src/lua -v
Lua 5.3.5  Copyright (C) 1994-2018 Lua.org, PUC-Rio
Making target [lua-5.3.4\install -> lua] ..
Ok.
clean
Ok.
```

Then there will be `lua/` in this folder, which contains:

```
bin:
    lua luac lua*.dll
include:
    lua.h luaconf.h lualib.h lauxlib.h lua.hpp 
lib:
    liblua.a 
man/man1:
    lua.1 luac.1 
```

## [LuaRocks](https://luarocks.org)

The package manager for Lua modules. Quick installation:

1. download [the latest release][1] and extract it
2. start a cmd.exe with administrator privileges
3. `install /F /MW` (force cover & use mingw)
4. add `C:\Program Files (x86)\LuaRocks` to PATH

## License

WTFPLv2.

[1]: https://luarocks.github.io/luarocks/releases
