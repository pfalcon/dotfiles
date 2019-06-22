all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

packages:
	sudo apt install btrfs-progs gcc-multilib g++-multilib gnome-disk-utility joe libffi-dev libffi-dev:i386 mc picocom pkg-config sqlite3

groups:
	sudo usermod -aG dialout $$USER
