all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

# catdoc is xls2csv and friends
packages:
	sudo apt install btrfs-progs gcc-multilib g++-multilib gnome-disk-utility \
	    joe libffi-dev libffi-dev:i386 mc picocom pkg-config sqlite3 traceroute \
	    aspell-ru catdoc rlwrap eog sloccount dnsmasq git dos2unix inkscape \
	    linux-libc-dev:i386 linux-libc-dev-x32-cross

groups:
	sudo usermod -aG dialout $$USER

# Tell dash to give up on /bin/sh (requires interaction)
dash:
	sudo dpkg-reconfigure dash
