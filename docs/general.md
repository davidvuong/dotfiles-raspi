# General

* SSH into your Pi

```bash
$ ssh pi@raspberrypi
```

The default password for user `pi` is `raspberry`.

* Restart your Pi

```bash
$ sudo shutdown -r now
```

* (specific to dotfiles-raspi) Mount volumes, restart SMB server

```bash
$ cd dotfiles/
$ sh mount.sh
$ sudo /etc/init.d/samba restart
```
