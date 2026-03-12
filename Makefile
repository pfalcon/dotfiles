all:

dirs:
	mkdir -p ~/bin
	mkdir -p ~/.local/bin

# catdoc is xls2csv and friends
packages:
	sudo apt install \
	    adb \
	    aspell-uk aspell-ru \
	    catdoc \
	    curl \
	    dnsmasq \
	    dos2unix \
	    eog \
	    g++-multilib \
	    gcc-multilib \
	    git \
	    gnome-disk-utility \
	    inkscape \
	    joe \
	    libffi-dev libffi-dev:i386 \
	    linux-libc-dev:i386 \
	    mplayer \
	    mpv \
	    mc \
	    net-tools \
	    openssh-server \
	    picocom \
	    pkg-config \
	    python3-gtkspellcheck \
	    rlwrap \
	    sqlite3 \
	    sloccount \
	    traceroute \
	    vlc \

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
