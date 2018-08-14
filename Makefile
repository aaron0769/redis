# Top level makefile, the real shit is at src/Makefile

# <target> : <prerequisites>
# [tab]  <commands>

# 不指定任何目标(target)的情况下执行第一个target
default: all

# DEFAULT 表示没有rule 的prerequisites 的执行方式，这里指 all
.DEFAULT:
	# 进入 src 目录，执行相同指令 ($@ 的意思)
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@

# PHONY 表示不管是否有该文件或更新都会执行 prerequisites
.PHONY: install
