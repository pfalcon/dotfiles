all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

packages:
	sudo apt install mc joe picocom

groups:
	sudo usermod -aG dialout $$USER
