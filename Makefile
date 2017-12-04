LUA ?= luajit

all: check
check:
	@echo "[*] static analysis"
	@luacheck --codes --formatter TAP . --exclude-files *.test.lua vendor config.lua

%.test: %.test.lua $(CLIB)
	$(LUA) $<

.PHONY: all check
