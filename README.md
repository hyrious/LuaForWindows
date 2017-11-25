## Require

- msys2 ( buildtools, curl )

## Make

```
build
```

You will see something like:

```
Unzipping lua-5.3.4.tar.gz ..
Ok.
Building lua-5.3.4 ..
Check version:
src/lua -v
Lua 5.3.4  Copyright (C) 1994-2017 Lua.org, PUC-Rio
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

## License

WTFPLv2.
