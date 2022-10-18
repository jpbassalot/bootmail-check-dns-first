# Bootmail

Inspired by - https://github.com/jmkim/bootmail

Tweaked and simplified to make sure DNS services work before sending any mail. 


# Install

Add bootmail.service to `/etc/systemd/system/bootmail.service`

Add bootmail.sh to `/root/scripts/bootmail.sh` or wherever you want, and run `chmod +x /root/scripts/bootmail.sh` to make the script executable by systemd

Finally, run `systemctl enable bootmail.service` to enable the service
