# Full logs

# fititnt at bravo in /alligo/code/fititnt/civicrm-playground
$ docker-compose up
Creating network "civicrmplayground_default" with the default driver
Creating volume "civicrmplayground_db-data" with local driver
Creating volume "civicrmplayground_app-data" with local driver


Building app
Step 1/23 : FROM drupal:7-fpm
7-fpm: Pulling from library/drupal
f2b6b4884fc8: Pull complete
8db887c45800: Pull complete
6e0e41c52c70: Pull complete
fbc9ac078c49: Pull complete
03eb16aae2c3: Pull complete
2718b45f0c2c: Pull complete
a5936d9458fd: Pull complete
300acfd9f691: Pull complete
4f743149bb14: Pull complete
2be9a47c7c51: Pull complete
ded2640fb57e: Pull complete
80cb343bb67b: Pull complete
bd8a5e7dab35: Pull complete
Digest: sha256:d87562df796d8cf0cbfe517472833206c5a8e9a2d2bdfe7840bb8495bf964821
Status: Downloaded newer image for drupal:7-fpm
 ---> 085dd9f02fec
Step 2/23 : MAINTAINER William Hale <salt@snowdrift.coop>
 ---> Running in 0ec59dbe7c54
Removing intermediate container 0ec59dbe7c54
 ---> 37a1b1b83e3f
Step 3/23 : RUN sed -i -e "s/;daemonize\s*=\s*yes/daemonize = no/g" /usr/local/etc/php-fpm.conf
 ---> Running in b8f38b555ab5
Removing intermediate container b8f38b555ab5
 ---> cd0967286e76
Step 4/23 : RUN DEBIAN_FRONTEND="noninteractive" apt-get update   && apt-get install -y apt-utils   && apt-get install -y     cron     libc-client-dev     libkrb5-dev     libicu-dev     libmcrypt-dev     libxml2-dev     mariadb-client     ssmtp
 ---> Running in 268312017bc3
Get:1 http://security.debian.org jessie/updates InRelease [63.1 kB]
Get:2 http://security.debian.org jessie/updates/main amd64 Packages [644 kB]
Ign http://deb.debian.org jessie InRelease
Get:3 http://deb.debian.org jessie-updates InRelease [145 kB]
Get:4 http://deb.debian.org jessie Release.gpg [2434 B]
Get:5 http://deb.debian.org jessie Release [148 kB]
Get:6 http://deb.debian.org jessie-updates/main amd64 Packages [23.1 kB]
Get:7 http://deb.debian.org jessie/main amd64 Packages [9064 kB]
Fetched 10.1 MB in 39s (257 kB/s)
Reading package lists...
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  libapt-inst1.5
The following NEW packages will be installed:
  apt-utils libapt-inst1.5
0 upgraded, 2 newly installed, 0 to remove and 5 not upgraded.
Need to get 537 kB of archives.
After this operation, 1333 kB of additional disk space will be used.
Get:1 http://deb.debian.org/debian/ jessie/main libapt-inst1.5 amd64 1.0.9.8.4 [169 kB]
Get:2 http://deb.debian.org/debian/ jessie/main apt-utils amd64 1.0.9.8.4 [368 kB]
debconf: delaying package configuration, since apt-utils is not installed
Fetched 537 kB in 2s (218 kB/s)
Selecting previously unselected package libapt-inst1.5:amd64.
(Reading database ... 12741 files and directories currently installed.)
Preparing to unpack .../libapt-inst1.5_1.0.9.8.4_amd64.deb ...
Unpacking libapt-inst1.5:amd64 (1.0.9.8.4) ...
Selecting previously unselected package apt-utils.
Preparing to unpack .../apt-utils_1.0.9.8.4_amd64.deb ...
Unpacking apt-utils (1.0.9.8.4) ...
Setting up libapt-inst1.5:amd64 (1.0.9.8.4) ...
Setting up apt-utils (1.0.9.8.4) ...
Processing triggers for libc-bin (2.19-18+deb8u10) ...
Reading package lists...
Building dependency tree...
Reading state information...
The following extra packages will be installed:
  comerr-dev icu-devtools init-system-helpers krb5-multidev libc-client2007e
  libdbd-mysql-perl libdbi-perl libgnutls-openssl27 libgssrpc4 libicu52
  libkadm5clnt-mit9 libkadm5srv-mit9 libkdb5-7 libmcrypt4 libmysqlclient18
  libpam0g-dev libreadline5 libssl-dev libssl-doc libssl1.0.0
  libterm-readkey-perl mariadb-client-10.0 mariadb-client-core-10.0
  mariadb-common mlock mysql-common zlib1g-dev
Suggested packages:
  doc-base anacron logrotate checksecurity krb5-doc uw-mailutils libclone-perl
  libmldbm-perl libnet-daemon-perl libsql-statement-perl krb5-user icu-doc
  mcrypt
Recommended packages:
  exim4 postfix mail-transport-agent
The following NEW packages will be installed:
  comerr-dev cron icu-devtools init-system-helpers krb5-multidev
  libc-client2007e libc-client2007e-dev libdbd-mysql-perl libdbi-perl
  libgnutls-openssl27 libgssrpc4 libicu-dev libicu52 libkadm5clnt-mit9
  libkadm5srv-mit9 libkdb5-7 libkrb5-dev libmcrypt-dev libmcrypt4
  libmysqlclient18 libpam0g-dev libreadline5 libssl-dev libssl-doc
  libterm-readkey-perl libxml2-dev mariadb-client mariadb-client-10.0
  mariadb-client-core-10.0 mariadb-common mlock mysql-common ssmtp zlib1g-dev
The following packages will be upgraded:
  libssl1.0.0
1 upgraded, 34 newly installed, 0 to remove and 4 not upgraded.
Need to get 25.3 MB of archives.
After this operation, 121 MB of additional disk space will be used.
Get:1 http://security.debian.org/ jessie/updates/main libssl1.0.0 amd64 1.0.1t-1+deb8u8 [1044 kB]
Get:2 http://security.debian.org/ jessie/updates/main libicu52 amd64 52.1-8+deb8u7 [6807 kB]
Get:3 http://security.debian.org/ jessie/updates/main mysql-common all 5.5.59-0+deb8u1 [80.2 kB]
Get:4 http://security.debian.org/ jessie/updates/main libmysqlclient18 amd64 5.5.59-0+deb8u1 [674 kB]
Get:5 http://security.debian.org/ jessie/updates/main icu-devtools amd64 52.1-8+deb8u7 [173 kB]
Get:6 http://security.debian.org/ jessie/updates/main libicu-dev amd64 52.1-8+deb8u7 [7671 kB]
Get:7 http://security.debian.org/ jessie/updates/main libssl-dev amd64 1.0.1t-1+deb8u8 [1279 kB]
Get:8 http://security.debian.org/ jessie/updates/main libssl-doc all 1.0.1t-1+deb8u8 [1166 kB]
Get:9 http://security.debian.org/ jessie/updates/main libxml2-dev amd64 2.9.1+dfsg1-5+deb8u6 [696 kB]
Get:10 http://security.debian.org/ jessie/updates/main mariadb-common all 10.0.32-0+deb8u1 [17.5 kB]
Get:11 http://security.debian.org/ jessie/updates/main mariadb-client-core-10.0 amd64 10.0.32-0+deb8u1 [803 kB]
Get:12 http://deb.debian.org/debian/ jessie/main init-system-helpers all 1.22 [14.0 kB]
Get:13 http://security.debian.org/ jessie/updates/main mariadb-client-10.0 amd64 10.0.32-0+deb8u1 [1155 kB]
Get:14 http://security.debian.org/ jessie/updates/main mariadb-client all 10.0.32-0+deb8u1 [17.1 kB]
Get:15 http://deb.debian.org/debian/ jessie/main cron amd64 3.0pl1-127+deb8u1 [94.0 kB]
Get:16 http://deb.debian.org/debian/ jessie/main libgnutls-openssl27 amd64 3.3.8-6+deb8u7 [143 kB]
Get:17 http://deb.debian.org/debian/ jessie/main libgssrpc4 amd64 1.12.1+dfsg-19+deb8u4 [86.5 kB]
Get:18 http://deb.debian.org/debian/ jessie/main libkadm5clnt-mit9 amd64 1.12.1+dfsg-19+deb8u4 [68.8 kB]
Get:19 http://deb.debian.org/debian/ jessie/main libkdb5-7 amd64 1.12.1+dfsg-19+deb8u4 [68.9 kB]
Get:20 http://deb.debian.org/debian/ jessie/main libkadm5srv-mit9 amd64 1.12.1+dfsg-19+deb8u4 [83.4 kB]
Get:21 http://deb.debian.org/debian/ jessie/main libreadline5 amd64 5.2+dfsg-2 [151 kB]
Get:22 http://deb.debian.org/debian/ jessie/main comerr-dev amd64 2.1-1.42.12-2+b1 [38.3 kB]
Get:23 http://deb.debian.org/debian/ jessie/main krb5-multidev amd64 1.12.1+dfsg-19+deb8u4 [145 kB]
Get:24 http://deb.debian.org/debian/ jessie/main mlock amd64 8:2007f~dfsg-4 [33.8 kB]
Get:25 http://deb.debian.org/debian/ jessie/main libc-client2007e amd64 8:2007f~dfsg-4 [604 kB]
Get:26 http://deb.debian.org/debian/ jessie/main libdbi-perl amd64 1.631-3+b1 [816 kB]
Get:27 http://deb.debian.org/debian/ jessie/main libdbd-mysql-perl amd64 4.028-2+deb8u2 [119 kB]
Get:28 http://deb.debian.org/debian/ jessie/main libmcrypt4 amd64 2.5.8-3.3 [71.2 kB]
Get:29 http://deb.debian.org/debian/ jessie/main libmcrypt-dev amd64 2.5.8-3.3 [92.9 kB]
Get:30 http://deb.debian.org/debian/ jessie/main libpam0g-dev amd64 1.1.8-3.1+deb8u2+b1 [183 kB]
Get:31 http://deb.debian.org/debian/ jessie/main zlib1g-dev amd64 1:1.2.8.dfsg-2+b1 [206 kB]
Get:32 http://deb.debian.org/debian/ jessie/main libterm-readkey-perl amd64 2.32-1+b1 [28.0 kB]
Get:33 http://deb.debian.org/debian/ jessie/main libc-client2007e-dev amd64 8:2007f~dfsg-4 [527 kB]
Get:34 http://deb.debian.org/debian/ jessie/main libkrb5-dev amd64 1.12.1+dfsg-19+deb8u4 [42.9 kB]
Get:35 http://deb.debian.org/debian/ jessie/main ssmtp amd64 2.64-8 [56.3 kB]
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (This frontend requires a controlling tty.)
debconf: falling back to frontend: Teletype
dpkg-preconfigure: unable to re-open stdin: 
Fetched 25.3 MB in 6s (3895 kB/s)
Selecting previously unselected package init-system-helpers.
(Reading database ... 12867 files and directories currently installed.)
Preparing to unpack .../init-system-helpers_1.22_all.deb ...
Unpacking init-system-helpers (1.22) ...
Selecting previously unselected package cron.
Preparing to unpack .../cron_3.0pl1-127+deb8u1_amd64.deb ...
Unpacking cron (3.0pl1-127+deb8u1) ...
Preparing to unpack .../libssl1.0.0_1.0.1t-1+deb8u8_amd64.deb ...
Unpacking libssl1.0.0:amd64 (1.0.1t-1+deb8u8) over (1.0.1t-1+deb8u7) ...
Selecting previously unselected package libgnutls-openssl27:amd64.
Preparing to unpack .../libgnutls-openssl27_3.3.8-6+deb8u7_amd64.deb ...
Unpacking libgnutls-openssl27:amd64 (3.3.8-6+deb8u7) ...
Selecting previously unselected package libgssrpc4:amd64.
Preparing to unpack .../libgssrpc4_1.12.1+dfsg-19+deb8u4_amd64.deb ...
Unpacking libgssrpc4:amd64 (1.12.1+dfsg-19+deb8u4) ...
Selecting previously unselected package libkadm5clnt-mit9:amd64.
Preparing to unpack .../libkadm5clnt-mit9_1.12.1+dfsg-19+deb8u4_amd64.deb ...
Unpacking libkadm5clnt-mit9:amd64 (1.12.1+dfsg-19+deb8u4) ...
Selecting previously unselected package libkdb5-7:amd64.
Preparing to unpack .../libkdb5-7_1.12.1+dfsg-19+deb8u4_amd64.deb ...
Unpacking libkdb5-7:amd64 (1.12.1+dfsg-19+deb8u4) ...
Selecting previously unselected package libkadm5srv-mit9:amd64.
Preparing to unpack .../libkadm5srv-mit9_1.12.1+dfsg-19+deb8u4_amd64.deb ...
Unpacking libkadm5srv-mit9:amd64 (1.12.1+dfsg-19+deb8u4) ...
Selecting previously unselected package libicu52:amd64.
Preparing to unpack .../libicu52_52.1-8+deb8u7_amd64.deb ...
Unpacking libicu52:amd64 (52.1-8+deb8u7) ...
Selecting previously unselected package mysql-common.
Preparing to unpack .../mysql-common_5.5.59-0+deb8u1_all.deb ...
Unpacking mysql-common (5.5.59-0+deb8u1) ...
Selecting previously unselected package libmysqlclient18:amd64.
Preparing to unpack .../libmysqlclient18_5.5.59-0+deb8u1_amd64.deb ...
Unpacking libmysqlclient18:amd64 (5.5.59-0+deb8u1) ...
Selecting previously unselected package libreadline5:amd64.
Preparing to unpack .../libreadline5_5.2+dfsg-2_amd64.deb ...
Unpacking libreadline5:amd64 (5.2+dfsg-2) ...
Selecting previously unselected package icu-devtools.
Preparing to unpack .../icu-devtools_52.1-8+deb8u7_amd64.deb ...
Unpacking icu-devtools (52.1-8+deb8u7) ...
Selecting previously unselected package comerr-dev.
Preparing to unpack .../comerr-dev_2.1-1.42.12-2+b1_amd64.deb ...
Unpacking comerr-dev (2.1-1.42.12-2+b1) ...
Selecting previously unselected package krb5-multidev.
Preparing to unpack .../krb5-multidev_1.12.1+dfsg-19+deb8u4_amd64.deb ...
Unpacking krb5-multidev (1.12.1+dfsg-19+deb8u4) ...
Selecting previously unselected package mlock.
Preparing to unpack .../mlock_8%3a2007f~dfsg-4_amd64.deb ...
Unpacking mlock (8:2007f~dfsg-4) ...
Selecting previously unselected package libc-client2007e.
Preparing to unpack .../libc-client2007e_8%3a2007f~dfsg-4_amd64.deb ...
Unpacking libc-client2007e (8:2007f~dfsg-4) ...
Selecting previously unselected package libdbi-perl.
Preparing to unpack .../libdbi-perl_1.631-3+b1_amd64.deb ...
Unpacking libdbi-perl (1.631-3+b1) ...
Selecting previously unselected package libdbd-mysql-perl.
Preparing to unpack .../libdbd-mysql-perl_4.028-2+deb8u2_amd64.deb ...
Unpacking libdbd-mysql-perl (4.028-2+deb8u2) ...
Selecting previously unselected package libicu-dev:amd64.
Preparing to unpack .../libicu-dev_52.1-8+deb8u7_amd64.deb ...
Unpacking libicu-dev:amd64 (52.1-8+deb8u7) ...
Selecting previously unselected package libmcrypt4.
Preparing to unpack .../libmcrypt4_2.5.8-3.3_amd64.deb ...
Unpacking libmcrypt4 (2.5.8-3.3) ...
Selecting previously unselected package libmcrypt-dev.
Preparing to unpack .../libmcrypt-dev_2.5.8-3.3_amd64.deb ...
Unpacking libmcrypt-dev (2.5.8-3.3) ...
Selecting previously unselected package libpam0g-dev:amd64.
Preparing to unpack .../libpam0g-dev_1.1.8-3.1+deb8u2+b1_amd64.deb ...
Unpacking libpam0g-dev:amd64 (1.1.8-3.1+deb8u2+b1) ...
Selecting previously unselected package zlib1g-dev:amd64.
Preparing to unpack .../zlib1g-dev_1%3a1.2.8.dfsg-2+b1_amd64.deb ...
Unpacking zlib1g-dev:amd64 (1:1.2.8.dfsg-2+b1) ...
Selecting previously unselected package libssl-dev:amd64.
Preparing to unpack .../libssl-dev_1.0.1t-1+deb8u8_amd64.deb ...
Unpacking libssl-dev:amd64 (1.0.1t-1+deb8u8) ...
Selecting previously unselected package libssl-doc.
Preparing to unpack .../libssl-doc_1.0.1t-1+deb8u8_all.deb ...
Unpacking libssl-doc (1.0.1t-1+deb8u8) ...
Selecting previously unselected package libterm-readkey-perl.
Preparing to unpack .../libterm-readkey-perl_2.32-1+b1_amd64.deb ...
Unpacking libterm-readkey-perl (2.32-1+b1) ...
Selecting previously unselected package libxml2-dev:amd64.
Preparing to unpack .../libxml2-dev_2.9.1+dfsg1-5+deb8u6_amd64.deb ...
Unpacking libxml2-dev:amd64 (2.9.1+dfsg1-5+deb8u6) ...
Selecting previously unselected package mariadb-common.
Preparing to unpack .../mariadb-common_10.0.32-0+deb8u1_all.deb ...
Unpacking mariadb-common (10.0.32-0+deb8u1) ...
Selecting previously unselected package mariadb-client-core-10.0.
Preparing to unpack .../mariadb-client-core-10.0_10.0.32-0+deb8u1_amd64.deb ...
Unpacking mariadb-client-core-10.0 (10.0.32-0+deb8u1) ...
Selecting previously unselected package mariadb-client-10.0.
Preparing to unpack .../mariadb-client-10.0_10.0.32-0+deb8u1_amd64.deb ...
Unpacking mariadb-client-10.0 (10.0.32-0+deb8u1) ...
Selecting previously unselected package mariadb-client.
Preparing to unpack .../mariadb-client_10.0.32-0+deb8u1_all.deb ...
Unpacking mariadb-client (10.0.32-0+deb8u1) ...
Selecting previously unselected package libc-client2007e-dev.
Preparing to unpack .../libc-client2007e-dev_8%3a2007f~dfsg-4_amd64.deb ...
Unpacking libc-client2007e-dev (8:2007f~dfsg-4) ...
Selecting previously unselected package libkrb5-dev.
Preparing to unpack .../libkrb5-dev_1.12.1+dfsg-19+deb8u4_amd64.deb ...
Unpacking libkrb5-dev (1.12.1+dfsg-19+deb8u4) ...
Selecting previously unselected package ssmtp.
Preparing to unpack .../ssmtp_2.64-8_amd64.deb ...
Unpacking ssmtp (2.64-8) ...
Processing triggers for systemd (215-17+deb8u7) ...
Setting up init-system-helpers (1.22) ...
Setting up cron (3.0pl1-127+deb8u1) ...
Adding group `crontab' (GID 107) ...
Done.
update-rc.d: warning: start and stop actions are no longer supported; falling back to defaults
invoke-rc.d: policy-rc.d denied execution of start.
Setting up libssl1.0.0:amd64 (1.0.1t-1+deb8u8) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
Setting up libgnutls-openssl27:amd64 (3.3.8-6+deb8u7) ...
Setting up libgssrpc4:amd64 (1.12.1+dfsg-19+deb8u4) ...
Setting up libkadm5clnt-mit9:amd64 (1.12.1+dfsg-19+deb8u4) ...
Setting up libkdb5-7:amd64 (1.12.1+dfsg-19+deb8u4) ...
Setting up libkadm5srv-mit9:amd64 (1.12.1+dfsg-19+deb8u4) ...
Setting up libicu52:amd64 (52.1-8+deb8u7) ...
Setting up mysql-common (5.5.59-0+deb8u1) ...
Setting up libmysqlclient18:amd64 (5.5.59-0+deb8u1) ...
Setting up libreadline5:amd64 (5.2+dfsg-2) ...
Setting up icu-devtools (52.1-8+deb8u7) ...
Setting up comerr-dev (2.1-1.42.12-2+b1) ...
Setting up krb5-multidev (1.12.1+dfsg-19+deb8u4) ...
Setting up mlock (8:2007f~dfsg-4) ...
Setting up libc-client2007e (8:2007f~dfsg-4) ...
Setting up libdbi-perl (1.631-3+b1) ...
Setting up libdbd-mysql-perl (4.028-2+deb8u2) ...
Setting up libicu-dev:amd64 (52.1-8+deb8u7) ...
Setting up libmcrypt4 (2.5.8-3.3) ...
Setting up libmcrypt-dev (2.5.8-3.3) ...
Setting up libpam0g-dev:amd64 (1.1.8-3.1+deb8u2+b1) ...
Setting up zlib1g-dev:amd64 (1:1.2.8.dfsg-2+b1) ...
Setting up libssl-dev:amd64 (1.0.1t-1+deb8u8) ...
Setting up libssl-doc (1.0.1t-1+deb8u8) ...
Setting up libterm-readkey-perl (2.32-1+b1) ...
Setting up libxml2-dev:amd64 (2.9.1+dfsg1-5+deb8u6) ...
Setting up mariadb-common (10.0.32-0+deb8u1) ...
Setting up mariadb-client-core-10.0 (10.0.32-0+deb8u1) ...
Setting up mariadb-client-10.0 (10.0.32-0+deb8u1) ...
Setting up mariadb-client (10.0.32-0+deb8u1) ...
Setting up libc-client2007e-dev (8:2007f~dfsg-4) ...
Setting up libkrb5-dev (1.12.1+dfsg-19+deb8u4) ...
Setting up ssmtp (2.64-8) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
Processing triggers for systemd (215-17+deb8u7) ...
Processing triggers for libc-bin (2.19-18+deb8u10) ...
Removing intermediate container 268312017bc3
 ---> 8058f6b899f6
Step 5/23 : RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl   && docker-php-ext-install imap intl mcrypt mysqli soap
 ---> Running in 6dad6af1524f
Configuring for:
PHP Api Version:         20151012
Zend Module Api No:      20151012
Zend Extension Api No:   320151012
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for a sed that does not truncate output... /bin/sed
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether cc accepts -g... yes
checking for cc option to accept ISO C89... none needed
checking how to run the C preprocessor... cc -E
checking for icc... no
checking for suncc... no
checking whether cc understands -c and -o together... yes
checking for system library directory... lib
checking if compiler supports -R... no
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr/local
checking for PHP includes... -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib
checking for PHP extension directory... /usr/local/lib/php/extensions/no-debug-non-zts-20151012
checking for PHP installed headers prefix... /usr/local/include/php
checking if debug is enabled... no
checking if zts is enabled... no
checking for re2c... re2c
checking for re2c version... 0.13.5 (ok)
checking for gawk... no
checking for nawk... nawk
checking if nawk is broken... no
checking for IMAP support... yes, shared
checking for IMAP Kerberos support... yes
checking for IMAP SSL support... yes
checking for utf8_mime2text signature... new
checking for U8T_DECOMPOSE... 
checking for pam_start in -lpam... yes
checking for crypt in -lcrypt... yes
checking for krb5-config... /usr/bin/krb5-config
checking for pkg-config... /usr/bin/pkg-config
checking whether rfc822_output_address_list function present... yes
checking whether build with IMAP works... yes
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for /usr/bin/ld option to reload object files... -r
checking for BSD-compatible nm... /usr/bin/nm -B
checking whether ln -s works... yes
checking how to recognize dependent libraries... pass_all
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking the maximum length of command line arguments... 1572864
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for objdir... .libs
checking for ar... ar
checking for ranlib... ranlib
checking for strip... strip
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC
checking if cc PIC flag -fPIC works... yes
checking if cc static flag -static works... no
checking if cc supports -c -o file.o... yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no

creating libtool
appending configuration tag "CXX" to libtool
configure: creating ./config.status
config.status: creating config.h
/bin/bash /usr/src/php/ext/imap/libtool --mode=compile cc  -I. -I/usr/src/php/ext/imap -DPHP_ATOM_INC -I/usr/src/php/ext/imap/include -I/usr/src/php/ext/imap/main -I/usr/src/php/ext/imap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/c-client  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/imap/php_imap.c -o php_imap.lo 
mkdir .libs
 cc -I. -I/usr/src/php/ext/imap -DPHP_ATOM_INC -I/usr/src/php/ext/imap/include -I/usr/src/php/ext/imap/main -I/usr/src/php/ext/imap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/c-client -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/imap/php_imap.c  -fPIC -DPIC -o .libs/php_imap.o
/bin/bash /usr/src/php/ext/imap/libtool --mode=link cc -DPHP_ATOM_INC -I/usr/src/php/ext/imap/include -I/usr/src/php/ext/imap/main -I/usr/src/php/ext/imap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/c-client  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2  -Wl,-O1 -Wl,--hash-style=both -pie -o imap.la -export-dynamic -avoid-version -prefer-pic -module -rpath /usr/src/php/ext/imap/modules  php_imap.lo -Wl,-rpath,/usr/lib/x86_64-linux-gnu/mit-krb5 -L/usr/lib/x86_64-linux-gnu/mit-krb5 -lc-client -lcrypt -lpam -lgssapi_krb5 -lkrb5 -lk5crypto -lcom_err -lssl -lcrypto
cc -shared  .libs/php_imap.o  -L/usr/lib/x86_64-linux-gnu/mit-krb5 -lc-client -lcrypt -lpam -lgssapi_krb5 -lkrb5 -lk5crypto -lcom_err -lssl -lcrypto  -Wl,-O1 -Wl,--hash-style=both -Wl,-rpath -Wl,/usr/lib/x86_64-linux-gnu/mit-krb5 -Wl,-soname -Wl,imap.so -o .libs/imap.so
creating imap.la
(cd .libs && rm -f imap.la && ln -s ../imap.la imap.la)
/bin/bash /usr/src/php/ext/imap/libtool --mode=install cp ./imap.la /usr/src/php/ext/imap/modules
cp ./.libs/imap.so /usr/src/php/ext/imap/modules/imap.so
cp ./.libs/imap.lai /usr/src/php/ext/imap/modules/imap.la
PATH="$PATH:/sbin" ldconfig -n /usr/src/php/ext/imap/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/src/php/ext/imap/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,--rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

Installing shared extensions:     /usr/local/lib/php/extensions/no-debug-non-zts-20151012/
find . -name \*.gcno -o -name \*.gcda | xargs rm -f
find . -name \*.lo -o -name \*.o | xargs rm -f
find . -name \*.la -o -name \*.a | xargs rm -f
find . -name \*.so | xargs rm -f
find . -name .libs -a -type d|xargs rm -rf
rm -f libphp.la       modules/* libs/*
Configuring for:
PHP Api Version:         20151012
Zend Module Api No:      20151012
Zend Extension Api No:   320151012
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for a sed that does not truncate output... /bin/sed
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether cc accepts -g... yes
checking for cc option to accept ISO C89... none needed
checking how to run the C preprocessor... cc -E
checking for icc... no
checking for suncc... no
checking whether cc understands -c and -o together... yes
checking for system library directory... lib
checking if compiler supports -R... no
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr/local
checking for PHP includes... -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib
checking for PHP extension directory... /usr/local/lib/php/extensions/no-debug-non-zts-20151012
checking for PHP installed headers prefix... /usr/local/include/php
checking if debug is enabled... no
checking if zts is enabled... no
checking for re2c... re2c
checking for re2c version... 0.13.5 (ok)
checking for gawk... no
checking for nawk... nawk
checking if nawk is broken... no
checking whether to enable internationalization support... yes, shared
checking for icu-config... /usr/bin/icu-config
checking for location of ICU headers and libraries... /usr
checking for ICU 4.0 or greater... found 52.1
checking for g++... g++
checking whether we are using the GNU C++ compiler... yes
checking whether g++ accepts -g... yes
checking how to run the C++ preprocessor... g++ -E
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for /usr/bin/ld option to reload object files... -r
checking for BSD-compatible nm... /usr/bin/nm -B
checking whether ln -s works... yes
checking how to recognize dependent libraries... pass_all
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking how to run the C++ preprocessor... g++ -E
checking the maximum length of command line arguments... 1572864
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for objdir... .libs
checking for ar... ar
checking for ranlib... ranlib
checking for strip... strip
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC
checking if cc PIC flag -fPIC works... yes
checking if cc static flag -static works... no
checking if cc supports -c -o file.o... yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no

creating libtool
appending configuration tag "CXX" to libtool
checking for ld used by g++... /usr/bin/ld -m elf_x86_64
checking if the linker (/usr/bin/ld -m elf_x86_64) is GNU ld... yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking for g++ option to produce PIC... -fPIC
checking if g++ PIC flag -fPIC works... yes
checking if g++ static flag -static works... no
checking if g++ supports -c -o file.o... yes
checking whether the g++ linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking dynamic linker characteristics... GNU/Linux ld.so
(cached) (cached) checking how to hardcode library paths into programs... immediate
configure: creating ./config.status
config.status: creating config.h
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/php_intl.c -o php_intl.lo 
mkdir .libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/php_intl.c  -fPIC -DPIC -o .libs/php_intl.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/intl_error.c -o intl_error.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/intl_error.c  -fPIC -DPIC -o .libs/intl_error.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/intl_convert.c -o intl_convert.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/intl_convert.c  -fPIC -DPIC -o .libs/intl_convert.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/intl_convertcpp.cpp -o intl_convertcpp.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/intl_convertcpp.cpp  -fPIC -DPIC -o .libs/intl_convertcpp.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator.c -o collator/collator.lo 
mkdir collator/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator.c  -fPIC -DPIC -o collator/.libs/collator.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_class.c -o collator/collator_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_class.c  -fPIC -DPIC -o collator/.libs/collator_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_sort.c -o collator/collator_sort.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_sort.c  -fPIC -DPIC -o collator/.libs/collator_sort.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_convert.c -o collator/collator_convert.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_convert.c  -fPIC -DPIC -o collator/.libs/collator_convert.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_locale.c -o collator/collator_locale.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_locale.c  -fPIC -DPIC -o collator/.libs/collator_locale.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_compare.c -o collator/collator_compare.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_compare.c  -fPIC -DPIC -o collator/.libs/collator_compare.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_attr.c -o collator/collator_attr.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_attr.c  -fPIC -DPIC -o collator/.libs/collator_attr.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_create.c -o collator/collator_create.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_create.c  -fPIC -DPIC -o collator/.libs/collator_create.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_is_numeric.c -o collator/collator_is_numeric.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_is_numeric.c  -fPIC -DPIC -o collator/.libs/collator_is_numeric.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/collator/collator_error.c -o collator/collator_error.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/collator/collator_error.c  -fPIC -DPIC -o collator/.libs/collator_error.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/common/common_error.c -o common/common_error.lo 
mkdir common/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/common/common_error.c  -fPIC -DPIC -o common/.libs/common_error.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/common/common_enum.cpp -o common/common_enum.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/common/common_enum.cpp  -fPIC -DPIC -o common/.libs/common_enum.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/common/common_date.cpp -o common/common_date.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/common/common_date.cpp  -fPIC -DPIC -o common/.libs/common_date.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/converter/converter.c -o converter/converter.lo 
mkdir converter/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/converter/converter.c  -fPIC -DPIC -o converter/.libs/converter.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter.c -o formatter/formatter.lo 
mkdir formatter/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter.c  -fPIC -DPIC -o formatter/.libs/formatter.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter_main.c -o formatter/formatter_main.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter_main.c  -fPIC -DPIC -o formatter/.libs/formatter_main.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter_class.c -o formatter/formatter_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter_class.c  -fPIC -DPIC -o formatter/.libs/formatter_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter_attr.c -o formatter/formatter_attr.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter_attr.c  -fPIC -DPIC -o formatter/.libs/formatter_attr.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter_data.c -o formatter/formatter_data.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter_data.c  -fPIC -DPIC -o formatter/.libs/formatter_data.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter_format.c -o formatter/formatter_format.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter_format.c  -fPIC -DPIC -o formatter/.libs/formatter_format.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/formatter/formatter_parse.c -o formatter/formatter_parse.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/formatter/formatter_parse.c  -fPIC -DPIC -o formatter/.libs/formatter_parse.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/normalizer/normalizer.c -o normalizer/normalizer.lo 
mkdir normalizer/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/normalizer/normalizer.c  -fPIC -DPIC -o normalizer/.libs/normalizer.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/normalizer/normalizer_class.c -o normalizer/normalizer_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/normalizer/normalizer_class.c  -fPIC -DPIC -o normalizer/.libs/normalizer_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/normalizer/normalizer_normalize.c -o normalizer/normalizer_normalize.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/normalizer/normalizer_normalize.c  -fPIC -DPIC -o normalizer/.libs/normalizer_normalize.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/locale/locale.c -o locale/locale.lo 
mkdir locale/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/locale/locale.c  -fPIC -DPIC -o locale/.libs/locale.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/locale/locale_class.c -o locale/locale_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/locale/locale_class.c  -fPIC -DPIC -o locale/.libs/locale_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/locale/locale_methods.c -o locale/locale_methods.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/locale/locale_methods.c  -fPIC -DPIC -o locale/.libs/locale_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/dateformat/dateformat.c -o dateformat/dateformat.lo 
mkdir dateformat/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/dateformat/dateformat.c  -fPIC -DPIC -o dateformat/.libs/dateformat.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_class.c -o dateformat/dateformat_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_class.c  -fPIC -DPIC -o dateformat/.libs/dateformat_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_attr.c -o dateformat/dateformat_attr.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_attr.c  -fPIC -DPIC -o dateformat/.libs/dateformat_attr.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_data.c -o dateformat/dateformat_data.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_data.c  -fPIC -DPIC -o dateformat/.libs/dateformat_data.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_format.c -o dateformat/dateformat_format.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_format.c  -fPIC -DPIC -o dateformat/.libs/dateformat_format.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_format_object.cpp -o dateformat/dateformat_format_object.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_format_object.cpp  -fPIC -DPIC -o dateformat/.libs/dateformat_format_object.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_parse.c -o dateformat/dateformat_parse.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_parse.c  -fPIC -DPIC -o dateformat/.libs/dateformat_parse.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_create.cpp -o dateformat/dateformat_create.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_create.cpp  -fPIC -DPIC -o dateformat/.libs/dateformat_create.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_attrcpp.cpp -o dateformat/dateformat_attrcpp.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_attrcpp.cpp  -fPIC -DPIC -o dateformat/.libs/dateformat_attrcpp.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/dateformat/dateformat_helpers.cpp -o dateformat/dateformat_helpers.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/dateformat/dateformat_helpers.cpp  -fPIC -DPIC -o dateformat/.libs/dateformat_helpers.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/msgformat/msgformat.c -o msgformat/msgformat.lo 
mkdir msgformat/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/msgformat/msgformat.c  -fPIC -DPIC -o msgformat/.libs/msgformat.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/msgformat/msgformat_attr.c -o msgformat/msgformat_attr.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/msgformat/msgformat_attr.c  -fPIC -DPIC -o msgformat/.libs/msgformat_attr.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/msgformat/msgformat_class.c -o msgformat/msgformat_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/msgformat/msgformat_class.c  -fPIC -DPIC -o msgformat/.libs/msgformat_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/msgformat/msgformat_data.c -o msgformat/msgformat_data.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/msgformat/msgformat_data.c  -fPIC -DPIC -o msgformat/.libs/msgformat_data.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/msgformat/msgformat_format.c -o msgformat/msgformat_format.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/msgformat/msgformat_format.c  -fPIC -DPIC -o msgformat/.libs/msgformat_format.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/msgformat/msgformat_helpers.cpp -o msgformat/msgformat_helpers.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/msgformat/msgformat_helpers.cpp  -fPIC -DPIC -o msgformat/.libs/msgformat_helpers.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/msgformat/msgformat_parse.c -o msgformat/msgformat_parse.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/msgformat/msgformat_parse.c  -fPIC -DPIC -o msgformat/.libs/msgformat_parse.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/grapheme/grapheme_string.c -o grapheme/grapheme_string.lo 
mkdir grapheme/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/grapheme/grapheme_string.c  -fPIC -DPIC -o grapheme/.libs/grapheme_string.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/grapheme/grapheme_util.c -o grapheme/grapheme_util.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/grapheme/grapheme_util.c  -fPIC -DPIC -o grapheme/.libs/grapheme_util.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/resourcebundle/resourcebundle.c -o resourcebundle/resourcebundle.lo 
mkdir resourcebundle/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/resourcebundle/resourcebundle.c  -fPIC -DPIC -o resourcebundle/.libs/resourcebundle.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/resourcebundle/resourcebundle_class.c -o resourcebundle/resourcebundle_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/resourcebundle/resourcebundle_class.c  -fPIC -DPIC -o resourcebundle/.libs/resourcebundle_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/resourcebundle/resourcebundle_iterator.c -o resourcebundle/resourcebundle_iterator.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/resourcebundle/resourcebundle_iterator.c  -fPIC -DPIC -o resourcebundle/.libs/resourcebundle_iterator.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/transliterator/transliterator.c -o transliterator/transliterator.lo 
mkdir transliterator/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/transliterator/transliterator.c  -fPIC -DPIC -o transliterator/.libs/transliterator.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/transliterator/transliterator_class.c -o transliterator/transliterator_class.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/transliterator/transliterator_class.c  -fPIC -DPIC -o transliterator/.libs/transliterator_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/transliterator/transliterator_methods.c -o transliterator/transliterator_methods.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/transliterator/transliterator_methods.c  -fPIC -DPIC -o transliterator/.libs/transliterator_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/timezone/timezone_class.cpp -o timezone/timezone_class.lo 
mkdir timezone/.libs
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/timezone/timezone_class.cpp  -fPIC -DPIC -o timezone/.libs/timezone_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/timezone/timezone_methods.cpp -o timezone/timezone_methods.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/timezone/timezone_methods.cpp  -fPIC -DPIC -o timezone/.libs/timezone_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/calendar/calendar_class.cpp -o calendar/calendar_class.lo 
mkdir calendar/.libs
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/calendar/calendar_class.cpp  -fPIC -DPIC -o calendar/.libs/calendar_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/calendar/calendar_methods.cpp -o calendar/calendar_methods.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/calendar/calendar_methods.cpp  -fPIC -DPIC -o calendar/.libs/calendar_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/calendar/gregoriancalendar_methods.cpp -o calendar/gregoriancalendar_methods.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/calendar/gregoriancalendar_methods.cpp  -fPIC -DPIC -o calendar/.libs/gregoriancalendar_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/breakiterator/breakiterator_class.cpp -o breakiterator/breakiterator_class.lo 
mkdir breakiterator/.libs
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/breakiterator/breakiterator_class.cpp  -fPIC -DPIC -o breakiterator/.libs/breakiterator_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/breakiterator/breakiterator_iterators.cpp -o breakiterator/breakiterator_iterators.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/breakiterator/breakiterator_iterators.cpp  -fPIC -DPIC -o breakiterator/.libs/breakiterator_iterators.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/breakiterator/breakiterator_methods.cpp -o breakiterator/breakiterator_methods.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/breakiterator/breakiterator_methods.cpp  -fPIC -DPIC -o breakiterator/.libs/breakiterator_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/breakiterator/rulebasedbreakiterator_methods.cpp -o breakiterator/rulebasedbreakiterator_methods.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/breakiterator/rulebasedbreakiterator_methods.cpp  -fPIC -DPIC -o breakiterator/.libs/rulebasedbreakiterator_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/breakiterator/codepointiterator_internal.cpp -o breakiterator/codepointiterator_internal.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/breakiterator/codepointiterator_internal.cpp  -fPIC -DPIC -o breakiterator/.libs/codepointiterator_internal.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile g++ -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -g -O2   -c /usr/src/php/ext/intl/breakiterator/codepointiterator_methods.cpp -o breakiterator/codepointiterator_methods.lo 
 g++ -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -g -O2 -c /usr/src/php/ext/intl/breakiterator/codepointiterator_methods.cpp  -fPIC -DPIC -o breakiterator/.libs/codepointiterator_methods.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/uchar/uchar.c -o uchar/uchar.lo 
mkdir uchar/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/uchar/uchar.c  -fPIC -DPIC -o uchar/.libs/uchar.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/idn/idn.c -o idn/idn.lo 
mkdir idn/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/idn/idn.c  -fPIC -DPIC -o idn/.libs/idn.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/spoofchecker/spoofchecker_class.c -o spoofchecker/spoofchecker_class.lo 
mkdir spoofchecker/.libs
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/spoofchecker/spoofchecker_class.c  -fPIC -DPIC -o spoofchecker/.libs/spoofchecker_class.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/spoofchecker/spoofchecker.c -o spoofchecker/spoofchecker.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/spoofchecker/spoofchecker.c  -fPIC -DPIC -o spoofchecker/.libs/spoofchecker.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/spoofchecker/spoofchecker_create.c -o spoofchecker/spoofchecker_create.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/spoofchecker/spoofchecker_create.c  -fPIC -DPIC -o spoofchecker/.libs/spoofchecker_create.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=compile cc -I/usr/include  -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/intl/spoofchecker/spoofchecker_main.c -o spoofchecker/spoofchecker_main.lo 
 cc -I/usr/include -Wno-write-strings -D__STDC_LIMIT_MACROS -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/intl -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/intl/spoofchecker/spoofchecker_main.c  -fPIC -DPIC -o spoofchecker/.libs/spoofchecker_main.o
/bin/bash /usr/src/php/ext/intl/libtool --mode=link g++ -DPHP_ATOM_INC -I/usr/src/php/ext/intl/include -I/usr/src/php/ext/intl/main -I/usr/src/php/ext/intl -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2  -Wl,-O1 -Wl,--hash-style=both -pie -o intl.la -export-dynamic -avoid-version -prefer-pic -module -rpath /usr/src/php/ext/intl/modules  php_intl.lo intl_error.lo intl_convert.lo intl_convertcpp.lo collator/collator.lo collator/collator_class.lo collator/collator_sort.lo collator/collator_convert.lo collator/collator_locale.lo collator/collator_compare.lo collator/collator_attr.lo collator/collator_create.lo collator/collator_is_numeric.lo collator/collator_error.lo common/common_error.lo common/common_enum.lo common/common_date.lo converter/converter.lo formatter/formatter.lo formatter/formatter_main.lo formatter/formatter_class.lo formatter/formatter_attr.lo formatter/formatter_data.lo formatter/formatter_format.lo formatter/formatter_parse.lo normalizer/normalizer.lo normalizer/normalizer_class.lo normalizer/normalizer_normalize.lo locale/locale.lo locale/locale_class.lo locale/locale_methods.lo dateformat/dateformat.lo dateformat/dateformat_class.lo dateformat/dateformat_attr.lo dateformat/dateformat_data.lo dateformat/dateformat_format.lo dateformat/dateformat_format_object.lo dateformat/dateformat_parse.lo dateformat/dateformat_create.lo dateformat/dateformat_attrcpp.lo dateformat/dateformat_helpers.lo msgformat/msgformat.lo msgformat/msgformat_attr.lo msgformat/msgformat_class.lo msgformat/msgformat_data.lo msgformat/msgformat_format.lo msgformat/msgformat_helpers.lo msgformat/msgformat_parse.lo grapheme/grapheme_string.lo grapheme/grapheme_util.lo resourcebundle/resourcebundle.lo resourcebundle/resourcebundle_class.lo resourcebundle/resourcebundle_iterator.lo transliterator/transliterator.lo transliterator/transliterator_class.lo transliterator/transliterator_methods.lo timezone/timezone_class.lo timezone/timezone_methods.lo calendar/calendar_class.lo calendar/calendar_methods.lo calendar/gregoriancalendar_methods.lo breakiterator/breakiterator_class.lo breakiterator/breakiterator_iterators.lo breakiterator/breakiterator_methods.lo breakiterator/rulebasedbreakiterator_methods.lo breakiterator/codepointiterator_internal.lo breakiterator/codepointiterator_methods.lo uchar/uchar.lo idn/idn.lo spoofchecker/spoofchecker_class.lo spoofchecker/spoofchecker.lo spoofchecker/spoofchecker_create.lo spoofchecker/spoofchecker_main.lo -Wl,-rpath,/usr/lib/x86_64-linux-gnu -L/usr/lib/x86_64-linux-gnu -licui18n -licuuc -licudata -licuio
g++ -shared -nostdlib /usr/lib/gcc/x86_64-linux-gnu/4.9/../../../x86_64-linux-gnu/crti.o /usr/lib/gcc/x86_64-linux-gnu/4.9/crtbeginS.o  .libs/php_intl.o .libs/intl_error.o .libs/intl_convert.o .libs/intl_convertcpp.o collator/.libs/collator.o collator/.libs/collator_class.o collator/.libs/collator_sort.o collator/.libs/collator_convert.o collator/.libs/collator_locale.o collator/.libs/collator_compare.o collator/.libs/collator_attr.o collator/.libs/collator_create.o collator/.libs/collator_is_numeric.o collator/.libs/collator_error.o common/.libs/common_error.o common/.libs/common_enum.o common/.libs/common_date.o converter/.libs/converter.o formatter/.libs/formatter.o formatter/.libs/formatter_main.o formatter/.libs/formatter_class.o formatter/.libs/formatter_attr.o formatter/.libs/formatter_data.o formatter/.libs/formatter_format.o formatter/.libs/formatter_parse.o normalizer/.libs/normalizer.o normalizer/.libs/normalizer_class.o normalizer/.libs/normalizer_normalize.o locale/.libs/locale.o locale/.libs/locale_class.o locale/.libs/locale_methods.o dateformat/.libs/dateformat.o dateformat/.libs/dateformat_class.o dateformat/.libs/dateformat_attr.o dateformat/.libs/dateformat_data.o dateformat/.libs/dateformat_format.o dateformat/.libs/dateformat_format_object.o dateformat/.libs/dateformat_parse.o dateformat/.libs/dateformat_create.o dateformat/.libs/dateformat_attrcpp.o dateformat/.libs/dateformat_helpers.o msgformat/.libs/msgformat.o msgformat/.libs/msgformat_attr.o msgformat/.libs/msgformat_class.o msgformat/.libs/msgformat_data.o msgformat/.libs/msgformat_format.o msgformat/.libs/msgformat_helpers.o msgformat/.libs/msgformat_parse.o grapheme/.libs/grapheme_string.o grapheme/.libs/grapheme_util.o resourcebundle/.libs/resourcebundle.o resourcebundle/.libs/resourcebundle_class.o resourcebundle/.libs/resourcebundle_iterator.o transliterator/.libs/transliterator.o transliterator/.libs/transliterator_class.o transliterator/.libs/transliterator_methods.o timezone/.libs/timezone_class.o timezone/.libs/timezone_methods.o calendar/.libs/calendar_class.o calendar/.libs/calendar_methods.o calendar/.libs/gregoriancalendar_methods.o breakiterator/.libs/breakiterator_class.o breakiterator/.libs/breakiterator_iterators.o breakiterator/.libs/breakiterator_methods.o breakiterator/.libs/rulebasedbreakiterator_methods.o breakiterator/.libs/codepointiterator_internal.o breakiterator/.libs/codepointiterator_methods.o uchar/.libs/uchar.o idn/.libs/idn.o spoofchecker/.libs/spoofchecker_class.o spoofchecker/.libs/spoofchecker.o spoofchecker/.libs/spoofchecker_create.o spoofchecker/.libs/spoofchecker_main.o  -L/usr/lib/x86_64-linux-gnu -licui18n -licuuc -licudata -licuio -L/usr/lib/gcc/x86_64-linux-gnu/4.9 -L/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../x86_64-linux-gnu -L/usr/lib/gcc/x86_64-linux-gnu/4.9/../../../../lib -L/lib/x86_64-linux-gnu -L/lib/../lib -L/usr/lib/../lib -L/usr/lib/gcc/x86_64-linux-gnu/4.9/../../.. -lstdc++ -lm -lc -lgcc_s /usr/lib/gcc/x86_64-linux-gnu/4.9/crtendS.o /usr/lib/gcc/x86_64-linux-gnu/4.9/../../../x86_64-linux-gnu/crtn.o  -Wl,-O1 -Wl,--hash-style=both -Wl,-rpath -Wl,/usr/lib/x86_64-linux-gnu -Wl,-soname -Wl,intl.so -o .libs/intl.so
creating intl.la
(cd .libs && rm -f intl.la && ln -s ../intl.la intl.la)
/bin/bash /usr/src/php/ext/intl/libtool --mode=install cp ./intl.la /usr/src/php/ext/intl/modules
cp ./.libs/intl.so /usr/src/php/ext/intl/modules/intl.so
cp ./.libs/intl.lai /usr/src/php/ext/intl/modules/intl.la
PATH="$PATH:/sbin" ldconfig -n /usr/src/php/ext/intl/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/src/php/ext/intl/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,--rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

Installing shared extensions:     /usr/local/lib/php/extensions/no-debug-non-zts-20151012/
find . -name \*.gcno -o -name \*.gcda | xargs rm -f
find . -name \*.lo -o -name \*.o | xargs rm -f
find . -name \*.la -o -name \*.a | xargs rm -f
find . -name \*.so | xargs rm -f
find . -name .libs -a -type d|xargs rm -rf
rm -f libphp.la       modules/* libs/*
Configuring for:
PHP Api Version:         20151012
Zend Module Api No:      20151012
Zend Extension Api No:   320151012
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for a sed that does not truncate output... /bin/sed
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether cc accepts -g... yes
checking for cc option to accept ISO C89... none needed
checking how to run the C preprocessor... cc -E
checking for icc... no
checking for suncc... no
checking whether cc understands -c and -o together... yes
checking for system library directory... lib
checking if compiler supports -R... no
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr/local
checking for PHP includes... -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib
checking for PHP extension directory... /usr/local/lib/php/extensions/no-debug-non-zts-20151012
checking for PHP installed headers prefix... /usr/local/include/php
checking if debug is enabled... no
checking if zts is enabled... no
checking for re2c... re2c
checking for re2c version... 0.13.5 (ok)
checking for gawk... no
checking for nawk... nawk
checking if nawk is broken... no
checking for mcrypt support... yes, shared
checking for libmcrypt version... >= 2.5.6
checking for mcrypt_module_open in -lmcrypt... no
checking for mcrypt_module_open in -lmcrypt... yes
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for /usr/bin/ld option to reload object files... -r
checking for BSD-compatible nm... /usr/bin/nm -B
checking whether ln -s works... yes
checking how to recognize dependent libraries... pass_all
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking the maximum length of command line arguments... 1572864
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for objdir... .libs
checking for ar... ar
checking for ranlib... ranlib
checking for strip... strip
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC
checking if cc PIC flag -fPIC works... yes
checking if cc static flag -static works... no
checking if cc supports -c -o file.o... yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no

creating libtool
appending configuration tag "CXX" to libtool
configure: creating ./config.status
config.status: creating config.h
/bin/bash /usr/src/php/ext/mcrypt/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mcrypt -DPHP_ATOM_INC -I/usr/src/php/ext/mcrypt/include -I/usr/src/php/ext/mcrypt/main -I/usr/src/php/ext/mcrypt -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mcrypt/mcrypt.c -o mcrypt.lo 
mkdir .libs
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mcrypt -DPHP_ATOM_INC -I/usr/src/php/ext/mcrypt/include -I/usr/src/php/ext/mcrypt/main -I/usr/src/php/ext/mcrypt -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mcrypt/mcrypt.c  -fPIC -DPIC -o .libs/mcrypt.o
/bin/bash /usr/src/php/ext/mcrypt/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mcrypt -DPHP_ATOM_INC -I/usr/src/php/ext/mcrypt/include -I/usr/src/php/ext/mcrypt/main -I/usr/src/php/ext/mcrypt -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mcrypt/mcrypt_filter.c -o mcrypt_filter.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mcrypt -DPHP_ATOM_INC -I/usr/src/php/ext/mcrypt/include -I/usr/src/php/ext/mcrypt/main -I/usr/src/php/ext/mcrypt -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mcrypt/mcrypt_filter.c  -fPIC -DPIC -o .libs/mcrypt_filter.o
/bin/bash /usr/src/php/ext/mcrypt/libtool --mode=link cc -DPHP_ATOM_INC -I/usr/src/php/ext/mcrypt/include -I/usr/src/php/ext/mcrypt/main -I/usr/src/php/ext/mcrypt -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2  -Wl,-O1 -Wl,--hash-style=both -pie -o mcrypt.la -export-dynamic -avoid-version -prefer-pic -module -rpath /usr/src/php/ext/mcrypt/modules  mcrypt.lo mcrypt_filter.lo -lmcrypt
cc -shared  .libs/mcrypt.o .libs/mcrypt_filter.o  /usr/lib/libmcrypt.so  -Wl,-O1 -Wl,--hash-style=both -Wl,-soname -Wl,mcrypt.so -o .libs/mcrypt.so
creating mcrypt.la
(cd .libs && rm -f mcrypt.la && ln -s ../mcrypt.la mcrypt.la)
/bin/bash /usr/src/php/ext/mcrypt/libtool --mode=install cp ./mcrypt.la /usr/src/php/ext/mcrypt/modules
cp ./.libs/mcrypt.so /usr/src/php/ext/mcrypt/modules/mcrypt.so
cp ./.libs/mcrypt.lai /usr/src/php/ext/mcrypt/modules/mcrypt.la
PATH="$PATH:/sbin" ldconfig -n /usr/src/php/ext/mcrypt/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/src/php/ext/mcrypt/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,--rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

Installing shared extensions:     /usr/local/lib/php/extensions/no-debug-non-zts-20151012/
find . -name \*.gcno -o -name \*.gcda | xargs rm -f
find . -name \*.lo -o -name \*.o | xargs rm -f
find . -name \*.la -o -name \*.a | xargs rm -f
find . -name \*.so | xargs rm -f
find . -name .libs -a -type d|xargs rm -rf
rm -f libphp.la       modules/* libs/*
Configuring for:
PHP Api Version:         20151012
Zend Module Api No:      20151012
Zend Extension Api No:   320151012
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for a sed that does not truncate output... /bin/sed
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether cc accepts -g... yes
checking for cc option to accept ISO C89... none needed
checking how to run the C preprocessor... cc -E
checking for icc... no
checking for suncc... no
checking whether cc understands -c and -o together... yes
checking for system library directory... lib
checking if compiler supports -R... no
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr/local
checking for PHP includes... -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib
checking for PHP extension directory... /usr/local/lib/php/extensions/no-debug-non-zts-20151012
checking for PHP installed headers prefix... /usr/local/include/php
checking if debug is enabled... no
checking if zts is enabled... no
checking for re2c... re2c
checking for re2c version... 0.13.5 (ok)
checking for gawk... no
checking for nawk... nawk
checking if nawk is broken... no
checking for MySQLi support... yes, shared
checking whether to enable embedded MySQLi support... no
checking for specified location of the MySQL UNIX socket... no
checking for MySQL UNIX socket location... no
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for /usr/bin/ld option to reload object files... -r
checking for BSD-compatible nm... /usr/bin/nm -B
checking whether ln -s works... yes
checking how to recognize dependent libraries... pass_all
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking the maximum length of command line arguments... 1572864
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for objdir... .libs
checking for ar... ar
checking for ranlib... ranlib
checking for strip... strip
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC
checking if cc PIC flag -fPIC works... yes
checking if cc static flag -static works... no
checking if cc supports -c -o file.o... yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no

creating libtool
appending configuration tag "CXX" to libtool
configure: creating ./config.status
config.status: creating config.h
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli.c -o mysqli.lo 
mkdir .libs
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli.c  -fPIC -DPIC -o .libs/mysqli.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_api.c -o mysqli_api.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_api.c  -fPIC -DPIC -o .libs/mysqli_api.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_prop.c -o mysqli_prop.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_prop.c  -fPIC -DPIC -o .libs/mysqli_prop.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_nonapi.c -o mysqli_nonapi.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_nonapi.c  -fPIC -DPIC -o .libs/mysqli_nonapi.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_fe.c -o mysqli_fe.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_fe.c  -fPIC -DPIC -o .libs/mysqli_fe.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_report.c -o mysqli_report.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_report.c  -fPIC -DPIC -o .libs/mysqli_report.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_driver.c -o mysqli_driver.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_driver.c  -fPIC -DPIC -o .libs/mysqli_driver.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_warning.c -o mysqli_warning.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_warning.c  -fPIC -DPIC -o .libs/mysqli_warning.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_exception.c -o mysqli_exception.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_exception.c  -fPIC -DPIC -o .libs/mysqli_exception.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/mysqli/mysqli_result_iterator.c -o mysqli_result_iterator.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/mysqli -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/mysqli/mysqli_result_iterator.c  -fPIC -DPIC -o .libs/mysqli_result_iterator.o
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=link cc -DPHP_ATOM_INC -I/usr/src/php/ext/mysqli/include -I/usr/src/php/ext/mysqli/main -I/usr/src/php/ext/mysqli -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2  -Wl,-O1 -Wl,--hash-style=both -pie -o mysqli.la -export-dynamic -avoid-version -prefer-pic -module -rpath /usr/src/php/ext/mysqli/modules  mysqli.lo mysqli_api.lo mysqli_prop.lo mysqli_nonapi.lo mysqli_fe.lo mysqli_report.lo mysqli_driver.lo mysqli_warning.lo mysqli_exception.lo mysqli_result_iterator.lo 
cc -shared  .libs/mysqli.o .libs/mysqli_api.o .libs/mysqli_prop.o .libs/mysqli_nonapi.o .libs/mysqli_fe.o .libs/mysqli_report.o .libs/mysqli_driver.o .libs/mysqli_warning.o .libs/mysqli_exception.o .libs/mysqli_result_iterator.o   -Wl,-O1 -Wl,--hash-style=both -Wl,-soname -Wl,mysqli.so -o .libs/mysqli.so
creating mysqli.la
(cd .libs && rm -f mysqli.la && ln -s ../mysqli.la mysqli.la)
/bin/bash /usr/src/php/ext/mysqli/libtool --mode=install cp ./mysqli.la /usr/src/php/ext/mysqli/modules
cp ./.libs/mysqli.so /usr/src/php/ext/mysqli/modules/mysqli.so
cp ./.libs/mysqli.lai /usr/src/php/ext/mysqli/modules/mysqli.la
PATH="$PATH:/sbin" ldconfig -n /usr/src/php/ext/mysqli/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/src/php/ext/mysqli/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,--rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

Installing shared extensions:     /usr/local/lib/php/extensions/no-debug-non-zts-20151012/
Installing header files:          /usr/local/include/php/
find . -name \*.gcno -o -name \*.gcda | xargs rm -f
find . -name \*.lo -o -name \*.o | xargs rm -f
find . -name \*.la -o -name \*.a | xargs rm -f
find . -name \*.so | xargs rm -f
find . -name .libs -a -type d|xargs rm -rf
rm -f libphp.la       modules/* libs/*
Configuring for:
PHP Api Version:         20151012
Zend Module Api No:      20151012
Zend Extension Api No:   320151012
checking for grep that handles long lines and -e... /bin/grep
checking for egrep... /bin/grep -E
checking for a sed that does not truncate output... /bin/sed
checking for cc... cc
checking whether the C compiler works... yes
checking for C compiler default output file name... a.out
checking for suffix of executables... 
checking whether we are cross compiling... no
checking for suffix of object files... o
checking whether we are using the GNU C compiler... yes
checking whether cc accepts -g... yes
checking for cc option to accept ISO C89... none needed
checking how to run the C preprocessor... cc -E
checking for icc... no
checking for suncc... no
checking whether cc understands -c and -o together... yes
checking for system library directory... lib
checking if compiler supports -R... no
checking if compiler supports -Wl,-rpath,... yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... x86_64-pc-linux-gnu
checking target system type... x86_64-pc-linux-gnu
checking for PHP prefix... /usr/local
checking for PHP includes... -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib
checking for PHP extension directory... /usr/local/lib/php/extensions/no-debug-non-zts-20151012
checking for PHP installed headers prefix... /usr/local/include/php
checking if debug is enabled... no
checking if zts is enabled... no
checking for re2c... re2c
checking for re2c version... 0.13.5 (ok)
checking for gawk... no
checking for nawk... nawk
checking if nawk is broken... no
checking whether to enable SOAP support... yes, shared
checking libxml2 install dir... no
checking for xml2-config path... /usr/bin/xml2-config
checking whether libxml build works... yes
checking for ld used by cc... /usr/bin/ld
checking if the linker (/usr/bin/ld) is GNU ld... yes
checking for /usr/bin/ld option to reload object files... -r
checking for BSD-compatible nm... /usr/bin/nm -B
checking whether ln -s works... yes
checking how to recognize dependent libraries... pass_all
checking for ANSI C header files... yes
checking for sys/types.h... yes
checking for sys/stat.h... yes
checking for stdlib.h... yes
checking for string.h... yes
checking for memory.h... yes
checking for strings.h... yes
checking for inttypes.h... yes
checking for stdint.h... yes
checking for unistd.h... yes
checking dlfcn.h usability... yes
checking dlfcn.h presence... yes
checking for dlfcn.h... yes
checking the maximum length of command line arguments... 1572864
checking command to parse /usr/bin/nm -B output from cc object... ok
checking for objdir... .libs
checking for ar... ar
checking for ranlib... ranlib
checking for strip... strip
checking if cc supports -fno-rtti -fno-exceptions... no
checking for cc option to produce PIC... -fPIC
checking if cc PIC flag -fPIC works... yes
checking if cc static flag -static works... no
checking if cc supports -c -o file.o... yes
checking whether the cc linker (/usr/bin/ld -m elf_x86_64) supports shared libraries... yes
checking whether -lc should be explicitly linked in... no
checking dynamic linker characteristics... GNU/Linux ld.so
checking how to hardcode library paths into programs... immediate
checking whether stripping libraries is possible... yes
checking if libtool supports shared libraries... yes
checking whether to build shared libraries... yes
checking whether to build static libraries... no

creating libtool
appending configuration tag "CXX" to libtool
configure: creating ./config.status
config.status: creating config.h
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/soap.c -o soap.lo 
mkdir .libs
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/soap.c  -fPIC -DPIC -o .libs/soap.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/php_encoding.c -o php_encoding.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/php_encoding.c  -fPIC -DPIC -o .libs/php_encoding.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/php_http.c -o php_http.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/php_http.c  -fPIC -DPIC -o .libs/php_http.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/php_packet_soap.c -o php_packet_soap.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/php_packet_soap.c  -fPIC -DPIC -o .libs/php_packet_soap.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/php_schema.c -o php_schema.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/php_schema.c  -fPIC -DPIC -o .libs/php_schema.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/php_sdl.c -o php_sdl.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/php_sdl.c  -fPIC -DPIC -o .libs/php_sdl.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=compile cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2   -c /usr/src/php/ext/soap/php_xml.c -o php_xml.lo 
 cc -DZEND_ENABLE_STATIC_TSRMLS_CACHE=1 -I. -I/usr/src/php/ext/soap -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2 -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H -fstack-protector-strong -fpic -fpie -O2 -c /usr/src/php/ext/soap/php_xml.c  -fPIC -DPIC -o .libs/php_xml.o
/bin/bash /usr/src/php/ext/soap/libtool --mode=link cc -DPHP_ATOM_INC -I/usr/src/php/ext/soap/include -I/usr/src/php/ext/soap/main -I/usr/src/php/ext/soap -I/usr/local/include/php -I/usr/local/include/php/main -I/usr/local/include/php/TSRM -I/usr/local/include/php/Zend -I/usr/local/include/php/ext -I/usr/local/include/php/ext/date/lib -I/usr/include/libxml2  -fstack-protector-strong -fpic -fpie -O2 -DHAVE_CONFIG_H  -fstack-protector-strong -fpic -fpie -O2  -Wl,-O1 -Wl,--hash-style=both -pie -o soap.la -export-dynamic -avoid-version -prefer-pic -module -rpath /usr/src/php/ext/soap/modules  soap.lo php_encoding.lo php_http.lo php_packet_soap.lo php_schema.lo php_sdl.lo php_xml.lo -lxml2
cc -shared  .libs/soap.o .libs/php_encoding.o .libs/php_http.o .libs/php_packet_soap.o .libs/php_schema.o .libs/php_sdl.o .libs/php_xml.o  -lxml2  -Wl,-O1 -Wl,--hash-style=both -Wl,-soname -Wl,soap.so -o .libs/soap.so
creating soap.la
(cd .libs && rm -f soap.la && ln -s ../soap.la soap.la)
/bin/bash /usr/src/php/ext/soap/libtool --mode=install cp ./soap.la /usr/src/php/ext/soap/modules
cp ./.libs/soap.so /usr/src/php/ext/soap/modules/soap.so
cp ./.libs/soap.lai /usr/src/php/ext/soap/modules/soap.la
PATH="$PATH:/sbin" ldconfig -n /usr/src/php/ext/soap/modules
----------------------------------------------------------------------
Libraries have been installed in:
   /usr/src/php/ext/soap/modules

If you ever happen to want to link against installed libraries
in a given directory, LIBDIR, you must either use libtool, and
specify the full pathname of the library, or use the `-LLIBDIR'
flag during linking and do at least one of the following:
   - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
     during execution
   - add LIBDIR to the `LD_RUN_PATH' environment variable
     during linking
   - use the `-Wl,--rpath -Wl,LIBDIR' linker flag
   - have your system administrator add LIBDIR to `/etc/ld.so.conf'

See any operating system documentation about shared libraries for
more information, such as the ld(1) and ld.so(8) manual pages.
----------------------------------------------------------------------

Build complete.
Don't forget to run 'make test'.

Installing shared extensions:     /usr/local/lib/php/extensions/no-debug-non-zts-20151012/
find . -name \*.gcno -o -name \*.gcda | xargs rm -f
find . -name \*.lo -o -name \*.o | xargs rm -f
find . -name \*.la -o -name \*.a | xargs rm -f
find . -name \*.so | xargs rm -f
find . -name .libs -a -type d|xargs rm -rf
rm -f libphp.la       modules/* libs/*
Removing intermediate container 6dad6af1524f
 ---> f5dec4a1b57a
Step 6/23 : COPY ssmtp.conf /etc/ssmtp/ssmtp.conf
 ---> 4b60bd28d286
Step 7/23 : RUN chown root:mail /etc/ssmtp/ssmtp.conf   && chmod 640 /etc/ssmtp/ssmtp.conf   && usermod -a -G mail www-data   && echo 'sendmail_path = "/usr/sbin/ssmtp -t"' > /usr/local/etc/php/conf.d/mail.ini
 ---> Running in 798cc8bfa4b0
Removing intermediate container 798cc8bfa4b0
 ---> 7b1d4e1761c6
Step 8/23 : RUN curl -sS https://getcomposer.org/installer | php   && mv composer.phar /usr/local/bin/composer
 ---> Running in 15be1747d674
All settings correct for using Composer
Downloading...

Composer (version 1.6.3) successfully installed to: /var/www/html/composer.phar
Use it: php composer.phar

Removing intermediate container 15be1747d674
 ---> 1dd0c7a3a3e7
Step 9/23 : RUN curl -fSL http://files.drush.org/drush.phar -o /usr/local/bin/drush   && chmod +x /usr/local/bin/drush   && curl -fSL https://raw.githubusercontent.com/civicrm/civicrm-drupal/7.x-master/drush/civicrm.drush.inc -o /usr/share/drush/commands/civicrm.drush.inc --create-dirs
 ---> Running in 3a2a6782d345
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
  0     0    0     0    0     0      0      0 --:--:--  0:00:01 --:--:--     0curl: (22) The requested URL returned error: 404 Not Found
ERROR: Service 'app' failed to build: The command '/bin/sh -c curl -fSL http://files.drush.org/drush.phar -o /usr/local/bin/drush   && chmod +x /usr/local/bin/drush   && curl -fSL https://raw.githubusercontent.com/civicrm/civicrm-drupal/7.x-master/drush/civicrm.drush.inc -o /usr/share/drush/commands/civicrm.drush.inc --create-dirs' returned a non-zero code: 22
