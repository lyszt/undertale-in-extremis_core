.PHONY: copy

copy:
	cat main.s | wl-copy
simulate:
	java -jar rars.jar nc main.asm
