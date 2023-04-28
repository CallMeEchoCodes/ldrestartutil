TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = ldrestartutil

$(TOOL_NAME)_FILES = main.swift Rootpath.m
$(TOOL_NAME)_CODESIGN_FLAGS = -Sent.plist
$(TOOL_NAME)_INSTALL_PATH = /usr/libexec
$(TOOL_NAME)_SWIFT_BRIDGING_HEADER = LDRestartutil-Bridging-Header.h


include $(THEOS_MAKE_PATH)/tool.mk
