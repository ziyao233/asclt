# asclt
# Makefile for asclt
# File:/src/Makefile
# Date:2022.03.08
# By MIT License.
# Copyright(C) 2023 Ziyao.All rights reserved.

# Tools
LMERGE		:= lmerge
INSTALL		:= install
CHMOD		:= chmod
REMOVE		:= rm

# Files
SRC		:= asclt.lua Terminal.lua Lang.lua
DEPENDENCY	:= ../dep/i18n.lua
LANG		:= -r ../lang/translation.lua
OUTPUT_SCRIPT	:= asclt

# Module names
NAME_i18n	:= -n ../dep/i18n.lua i18n
NAME_LANG	:= -n ../lang/translation.lua translation.lua
NAME		:= $(NAME_i18n) $(NAME_LANG)

# Directories
DIR_INSTALL	:= ${HOME}/.local/bin

default: build

build: $(SRC)
	$(LMERGE) $(SRC) $(DEPENDENCY) -m asclt.lua -ishb -o $(OUTPUT_SCRIPT) \
		  $(LANG) $(NAME)
	$(CHMOD) 755 $(OUTPUT_SCRIPT)

install: build
	$(INSTALL) $(OUTPUT_SCRIPT) -Dm 644 $(DIR_INSTALL) 

clean:
	$(REMOVE) $(OUTPUT_SCRIPT)
