#!/bin/bash
install:
ifeq ($(OS),Windows_NT)
	rustc -o shellsay.exe src/main.rs
	mkdir "C:\cbin"
	cp ./shellsay.exe "C:\cbin"
	setx PATH "%PATH%;C:\cbin"
	echo "shellsay installed""
else
	rustc -o shellsay src/main.rs
	cp ./shellsay /usr/local/bin
	chmod +x /usr/local/bin/shellsay
	echo "shellsay installed"
endif

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
