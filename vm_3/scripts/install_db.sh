#!/bin/bash

pacman -Sy postgresql --noconfirm
sudo -u postgres initdb --locale=en_US.UTF-8 -E UTF8 -D /var/lib/postgres/data
sudo -u postgres createuser --createdb --createrole lion

sed -i "/listen_addresses =/s/= .*/="*"/" /var/lib/postgres/data/postgresql.conf
