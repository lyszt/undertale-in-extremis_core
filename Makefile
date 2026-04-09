.PHONY: copy

copy:
	cat main.asm | wl-copy
simulate:
	java -jar rars.jar nc main.asm
