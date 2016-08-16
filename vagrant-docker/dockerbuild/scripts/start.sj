#!/bin/sh

trap "kill -TERM -$$" SIGKILL

# Kill parent if received terminal signal
read pid cmd state ppid pgrp session tty_nr tpgid rest < /proc/self/stat
trap "kill -TERM -$pgrp; exit" EXIT TERM KILL SIGKILL SIGTERM SIGQUIT
echo "Monitoring signals for group $pgrp"

# Start Apache2
/usr/local/apache2/bin/httpd &

# Start OpenSSH daemon
/usr/sbin/sshd -D
