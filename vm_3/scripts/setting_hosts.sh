HOSTS_FILE="/etc/hosts"

cat << EOF > $HOSTS_FILE
127.0.0.1       localhost
192.168.69.90   db01
192.168.69.91   web01
EOF