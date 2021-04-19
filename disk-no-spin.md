# Configuring system to let disk spin down

For always-on systems like NAS, which still should sleep most of the time,
when not used.

Dedicated NAS, etc. systems usually have this covered, so particular focus
of this note is for generic OSes like Debian.

Usual suspects:

* Logging
  * System logging daemon, like `rsyslog`.
  * Adhoc logging of particular daemons, e.g. Samba.
* Periodically running processes
  * cron
  * atd
* `systemd` - really fits into 2 previous categories, but due to particular
  notoriety, NIH and proprietary design requires particular scrutiny.
  * systemd-timesyncd - proprietary NIH for ntpdate
  * systemd timers - proprietary NIH for cron
* Swap
* Buff/cache configuration

## Logging

All logging should happen to tmpfs, with rotation to persistent storage.

## Periodically running processes

Running generic processes (executables) more often than once a day
should be avoided. E.g., `cron.hourly` should be disabled.

`atd`, unless actually used, can be disabled too.

## systemd

Contains a lot of proprietary, NIH services and daemons, not
implemented with efficiency and configurability in mind. Newer
version gradually offer more configurability, but the version
you may run may not offer it. Overall, it's better to disable
as many as possible proprietary `systemd` services and use
classic Unix tools instead.

### systemd-timesycd

Runs often and writes to a disk on each time sync. Newer versions
allow to configure polling interval, but older don't. Better to
disable and use `ntpdate` if needed.

```
systemctl disable systemd-timesyncd
```

### systemd "timers"

Proprietary duplication of `cron` functionality. For each timer
run, a file in /var/lib/systemd/timers/ is touched, so unless
that's on tmpfs, triggering timer will always trigger disk
spin up due to this writing (same issue as with
`systemd-timesyncd`).

To list active timers:

```
systemctl list-timers
```

Then review and disable with:

```
systemctl disable apt-daily.timer
systemctl stop apt-daily.timer
```

Functionality if needed can be moved to cron.
