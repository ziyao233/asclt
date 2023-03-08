#!/usr/bin/env lua
--[[
	asclt
	File:/src/asclt.lua
	Date:2023.03.08
	By MIT License.
	Copyright (c) 2023 Ziyao.All rights reserved.
]]

local io		= require("io");

local modLang		= require("Lang");
local modTerminal	= require("Terminal");

modLang.init();
modTerminal.init("vt100");

modTerminal.printfln(modLang.translate("Hello"));
