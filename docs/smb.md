# SMB - Samba

After running `./install.sh`, there is one last thing to do before write access is enabled, you need to create your own user.

1. Create your Linux user:

  ```sh
  sudo useradd -m <username>
  sudo passwd <username>
  ```

1. Add your user to the `@sudo` `@users` group:

  ```sh
  sudo usermod -a -G sudo users <username>
  ```

1. Create your SMB user:

  ```sh
  sudo smbpasswd -a <username>
  ```

1. Restart the SMB service:

  ```
  sudo /etc/init.d/samba restart
  ```
