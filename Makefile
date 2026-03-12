all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

# catdoc is xls2csv and friends
packages:
	sudo apt install gcc-multilib g++-multilib gnome-disk-utility \
	    joe libffi-dev libffi-dev:i386 mc picocom pkg-config sqlite3 traceroute \
	    aspell-uk aspell-ru catdoc rlwrap eog sloccount dnsmasq git dos2unix inkscape \
	    linux-libc-dev:i386 mplayer openssh-server net-tools \
	    adb python3-gtkspellcheck

packages-extra:
	sudo apt install \
	    btrfs-progs \
	    linux-libc-dev-x32-cross \
	    ploticus

groups:
	sudo usermod -aG dialout $$USER

# Tell dash to give up on /bin/sh (requires interaction)
dash:
	# No longer works in 24.04
	#sudo dpkg-reconfigure dash
	sudo rm /bin/sh
	sudo ln -s /bin/bash /bin/sh
	ls -l /bin/sh
