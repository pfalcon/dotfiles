1. Run mate-tweak and set window manager be "no compositor", to get rid of
buggy, poorly scalable compositor crap.

2. Check /etc/default/ufw for default FORWARD policy, as required for
masquerading to work.

3. "Fancy HTML Viewer" plugin for Claws Mail: Get source tarball for the
install binary version. Uncompress, configure (install missing *-dev packages
as needed), build. Copy `src/plugins/fancy/.libs/fancy.so` to
`/usr/lib/x86_64-linux-gnu/claws-mail/plugins`. "Load" this plugin via
Configuration -> Plugins... menu.

Deps for Claws Mail 4.0.0 on Ubuntu 22.04:

libglib2.0-dev
libgdk-pixbuf-2.0-dev
libgnutls28-dev
libgtk-3-dev

libwebkit2gtk-4.0-dev
libcurl4-gnutls-dev
