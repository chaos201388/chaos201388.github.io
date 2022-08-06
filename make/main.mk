words :=

ifeq ($(strip $(words)),)
  words := 'hello world'
endif


.PHONY: all something nothing

all: something nothing

something:
	@echo $(words)

nothing:
	@:
