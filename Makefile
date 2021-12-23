#!/bin/bash
unix:
	rustc ./src/main.rs -o ./shellsay
	cp ./shellsay /usr/local/bin/shellsay
	chmod +x /usr/local/bin/shellsay
	echo "shellsay installed"

windows:
	rustc ./src/main.rs -o ./shellsay.exe
	mkdir "C:\cbin"
	cp ./shellsay.exe "C:\cbin"
	setx PATH "%PATH%;C:\cbin"
	echo "shellsay installed"

clean:
ifeq ($(OS),Windows_NT)
	del /f /q "C:\cbin\shellsay.exe"
	rmdir /s /q "C:\cbin"
	echo "shellsay removed"
else
	rm /usr/local/bin/shellsay
	rm ./shellsay
	echo "shellsay removed"
endif
