#!/bin/bash

pacman -Sy apache --noconfirm
systemctl enable httpd.service
systemctl start httpd.service