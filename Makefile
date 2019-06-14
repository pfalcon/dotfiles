all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

packages:
	sudo apt install mc joe picocom sqlite3

groups:
	sudo usermod -aG dialout $$USER
