all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

packages:
	sudo apt install btrfs-progs gnome-disk-utility joe mc picocom sqlite3

groups:
	sudo usermod -aG dialout $$USER
