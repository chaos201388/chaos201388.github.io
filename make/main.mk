WORDS := 'helle world'

.PHONY : all something nothing

all: something nothing

something:
	@echo $(WORDS)

nothing:
	@:
