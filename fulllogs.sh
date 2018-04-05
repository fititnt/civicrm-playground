# fititnt at bravo in /alligo/code/fititnt/civicrm-playground
$ docker-compose up -d
Creating network "civicrmplayground_default" with the default driver
Creating volume "civicrmplayground_drush-cache" with default driver
Creating volume "civicrmplayground_git-cache" with default driver
Creating volume "civicrmplayground_composer-cache" with default driver
Creating volume "civicrmplayground_bower-cache" with default driver
Creating volume "civicrmplayground_buildkit" with default driver
Creating volume "civicrmplayground_mysql" with default driver
Creating volume "civicrmplayground_amp" with default driver
Creating volume "civicrmplayground_npm-cache" with default driver
Pulling maildev (djfarrelly/maildev:latest)...
latest: Pulling from djfarrelly/maildev
ab7e51e37a18: Pull complete
e5b0c488c86b: Pull complete
84b7d2a67805: Pull complete
d24af6c23037: Pull complete
262a00925cb5: Pull complete
8411e046dcb9: Pull complete
0b1384cf6fae: Pull complete
Digest: sha256:624e0ec781e11c3531da83d9448f5861f258ee008c1b2da63b3248bfd680acfa
Status: Downloaded newer image for djfarrelly/maildev:latest
Pulling mysql (mysql:5.7)...
5.7: Pulling from library/mysql
2a72cbf407d6: Pull complete
38680a9b47a8: Pull complete
4c732aa0eb1b: Pull complete
c5317a34eddd: Pull complete
f92be680366c: Pull complete
e8ecd8bec5ab: Pull complete
2a650284a6a8: Pull complete
5b5108d08c6d: Pull complete
beaff1261757: Pull complete
c1a55c6375b5: Pull complete
8181cde51c65: Pull complete
Digest: sha256:691c55aabb3c4e3b89b953dd2f022f7ea845e5443954767d321d5f5fa394e28c
Status: Downloaded newer image for mysql:5.7
Pulling civicrm (michaelmcandrew/civicrm:latest)...
latest: Pulling from michaelmcandrew/civicrm
f49cf87b52c1: Pull complete
185616061386: Pull complete
5fc132db2e0d: Pull complete
00c1c323341a: Pull complete
ff3701349211: Pull complete
faab1d6ad70f: Pull complete
eae8d88d75e0: Pull complete
7fbd4c732645: Pull complete
b2e59bdd1208: Pull complete
d5519147d4e5: Pull complete
512315391b1a: Pull complete
b32d82403bad: Pull complete
b5eb11551d42: Pull complete
02fee8125e6e: Pull complete
507c4a9d2dcb: Pull complete
3896738716f0: Pull complete
84079df02860: Pull complete
492b2d973a83: Pull complete
8e96c5b7f677: Pull complete
861414983287: Pull complete
5886d33dc83a: Pull complete
a2a689ee7797: Pull complete
b5e06560307e: Pull complete
e8ae7335b3dc: Pull complete
27e3a22fc4d6: Pull complete
1e0c99e2edbb: Pull complete
6b8314264c62: Pull complete
a319ea573cdb: Pull complete
cf4cada62d9e: Pull complete
0acbbae44ef5: Pull complete
91ff588cd66f: Pull complete
4dd653c455c2: Pull complete
13cf73340001: Pull complete
b08f6b8c0140: Pull complete
91c33ec900d7: Pull complete
9f609f6e0572: Pull complete
c9e8987c8695: Pull complete
Digest: sha256:cd48b41538281df7802a1519f79934c1759a36d5b5e77b20e832dc73c945bed2
Creating civicrmplayground_mysql_1      ... done
Creating civicrmplayground_maildev_1    ... done
Creating civicrmplayground_mysql_1      ... 
Creating civicrmplayground_civicrm_1    ... done
Creating civicrmplayground_phpmyadmin_1 ... done

# fititnt at bravo in /alligo/code/fititnt/civicrm-playground
$ docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED              STATUS              PORTS                            NAMES
ed7b115b04ab        michaelmcandrew/civicrm   "docker-php-entrypoi…"   About a minute ago   Up 37 seconds       80/tcp, 0.0.0.0:8080->8080/tcp   civicrmplayground_civicrm_1
37e1e72eb2a4        phpmyadmin/phpmyadmin     "/run.sh phpmyadmin"     About a minute ago   Up About a minute   9000/tcp, 0.0.0.0:8081->80/tcp   civicrmplayground_phpmyadmin_1
f7b0d3bc7a96        djfarrelly/maildev        "bin/maildev --web 8…"   About a minute ago   Up About a minute   25/tcp, 0.0.0.0:8082->80/tcp     civicrmplayground_maildev_1
f078e3739e82        mysql:5.7                 "docker-entrypoint.s…"   About a minute ago   Up About a minute   3306/tcp                         civicrmplayground_mysql_1

# fititnt at bravo in /alligo/code/fititnt/civicrm-playground
$ docker-compose exec -u buildkit civicrm civibuild create dmaster --url http://localhost:8080
[[Download dmaster (type 'drupal-demo' in '/buildkit/build/dmaster')]]
[[Update caches]]
From https://github.com/civicrm/civicrm-backdrop
 * [new branch]      1.x-5.1    -> 1.x-5.1
 * [new tag]         1.x-5.0.0  -> 1.x-5.0.0
remote: Counting objects: 278, done.
remote: Compressing objects: 100% (64/64), done.
remote: Total 278 (delta 200), reused 251 (delta 196), pack-reused 14
Receiving objects: 100% (278/278), 76.98 KiB | 0 bytes/s, done.
Resolving deltas: 100% (200/200), completed with 101 local objects.
From https://github.com/civicrm/civicrm-core
   0082105..8ea54dd  5.0        -> 5.0
 * [new branch]      5.1        -> 5.1
   b57b8dc..da0c485  master     -> master
 * [new tag]         5.0.0      -> 5.0.0
From https://github.com/civicrm/civicrm-drupal
 * [new branch]      6.x-5.1    -> 6.x-5.1
 * [new branch]      7.x-5.1    -> 7.x-5.1
 * [new branch]      8.x-5.1    -> 8.x-5.1
 * [new tag]         6.x-5.0.0  -> 6.x-5.0.0
 * [new tag]         7.x-5.0.0  -> 7.x-5.0.0
From https://github.com/civicrm/civicrm-packages
 * [new branch]      5.1        -> 5.1
 * [new tag]         5.0.0      -> 5.0.0
From https://github.com/civicrm/civicrm-joomla
 * [new branch]      5.1        -> 5.1
 * [new tag]         5.0.0      -> 5.0.0
remote: Counting objects: 4, done.
remote: Compressing objects: 100% (4/4), done.
remote: Total 4 (delta 0), reused 4 (delta 0), pack-reused 0
Unpacking objects: 100% (4/4), done.
From https://github.com/civicrm/civicrm-wordpress
   0e900d4..3588bfa  5.0        -> 5.0
 * [new branch]      5.1        -> 5.1
   80f8d35..9cd1933  master     -> master
 * [new tag]         5.0.0      -> 5.0.0
[[Execute /buildkit/app/config/drupal-demo/download.sh]]
++ source /buildkit/app/config/drupal-demo/download.sh
+++ '[' -z '' ']'
+++ CMS_VERSION=7.x
+++ '[' -z master ']'
+++ '[' -z '' ']'
+++ NG_PRFL_VERSION=v4.6-1.0.2
+++ '[' -z '' ']'
+++ RULES_VERSION=master
+++ '[' -z master ']'
+++ '[' -d /buildkit/build/dmaster.drushtmp ']'
+++ drush8 -y dl drupal-7.x --destination=/buildkit/build/dmaster.drushtmp --drupal-project-rename
The directory /buildkit/build/dmaster.drushtmp does not exist.
Would you like to create it? (y/n): y
Project drupal (7.x-dev) downloaded to                               [success]
/buildkit/build/dmaster.drushtmp/drupal.
Project drupal contains:                                             [success]
 - 3 profiles: minimal, testing, standard
 - 4 themes: garland, seven, stark, bartik
 - 47 modules: drupal_system_listing_compatible_test,
drupal_system_listing_incompatible_test, filter, simpletest, locale,
shortcut, user, help, statistics, poll, php, openid, path, search,
overlay, translation, node, contact, image, blog, aggregator, syslog,
forum, system, trigger, dashboard, comment, menu, dblog, tracker,
color, profile, file, text, options, list, field_sql_storage, number,
field, book, taxonomy, update, rdf, block, toolbar, field_ui,
contextual

+++ mv /buildkit/build/dmaster.drushtmp/drupal /buildkit/build/dmaster
+++ '[' -d /buildkit/build/dmaster.drushtmp ']'
+++ rm -rf /buildkit/build/dmaster.drushtmp
+++ pushd /buildkit/build/dmaster
~/build/dmaster ~ ~
+++ drush8 dl -y libraries-1 redirect-1 webform-4 options_element-1 webform_civicrm-4 views-3 login_destination-1 userprotect-1 devel-1 civicrm_error-2.x-dev
Project libraries (7.x-2.3) downloaded to                            [success]
/buildkit/build/dmaster/sites/all/modules/libraries.
Project redirect (7.x-1.0-rc3) downloaded to                         [success]
/buildkit/build/dmaster/sites/all/modules/redirect.
Project webform (7.x-4.16) downloaded to                             [success]
/buildkit/build/dmaster/sites/all/modules/webform.
Project options_element (7.x-1.12) downloaded to                     [success]
/buildkit/build/dmaster/sites/all/modules/options_element.
Project webform_civicrm (7.x-4.20) downloaded to                     [success]
/buildkit/build/dmaster/sites/all/modules/webform_civicrm.
Project views (7.x-3.18) downloaded to                               [success]
/buildkit/build/dmaster/sites/all/modules/views.
Project views contains 2 modules: views_ui, views.
Project login_destination (7.x-1.4) downloaded to                    [success]
/buildkit/build/dmaster/sites/all/modules/login_destination.
Project userprotect (7.x-1.2) downloaded to                          [success]
/buildkit/build/dmaster/sites/all/modules/userprotect.
Project devel (7.x-1.5) downloaded to                                [success]
/buildkit/build/dmaster/sites/all/modules/devel.
Project devel contains 3 modules: devel_generate, devel, devel_node_access.
Project civicrm_error (7.x-2.x-dev) downloaded to                    [success]
/buildkit/build/dmaster/sites/all/modules/civicrm_error.
+++ pushd sites/all/modules
~/build/dmaster/sites/all/modules ~/build/dmaster ~ ~
+++ git clone /buildkit/app/tmp/git-cache/civicrm/civicrm-core.git -b master civicrm
Cloning into 'civicrm'...
done.
+++ git clone /buildkit/app/tmp/git-cache/civicrm/civicrm-drupal.git -b 7.x-master civicrm/drupal
Cloning into 'civicrm/drupal'...
done.
+++ git clone /buildkit/app/tmp/git-cache/civicrm/civicrm-packages.git -b master civicrm/packages
Cloning into 'civicrm/packages'...
done.
+++ git clone /buildkit/app/tmp/git-cache/eileenmcnaughton/civicrm_developer.git -b master civicrm_developer
Cloning into 'civicrm_developer'...
done.
+++ git clone /buildkit/app/tmp/git-cache/civicrm/civivolunteer.git -b master civicrm/tools/extensions/civivolunteer
Cloning into 'civicrm/tools/extensions/civivolunteer'...
done.
+++ git clone /buildkit/app/tmp/git-cache/ginkgostreet/org.civicrm.angularprofiles.git -b v4.6-1.0.2 civicrm/tools/extensions/org.civicrm.angularprofiles
Cloning into 'civicrm/tools/extensions/org.civicrm.angularprofiles'...
done.
Note: checking out 'c507b4d978202b157d3d4d1e6a57488f41034ab1'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name

+++ git clone /buildkit/app/tmp/git-cache/civicrm/org.civicoop.civirules.git -b master civicrm/tools/extensions/org.civicoop.civirules
Cloning into 'civicrm/tools/extensions/org.civicoop.civirules'...
done.
+++ git clone /buildkit/app/tmp/git-cache/TechToThePeople/civisualize.git -b master civicrm/tools/extensions/civisualize
Cloning into 'civicrm/tools/extensions/civisualize'...
done.
+++ git clone /buildkit/app/tmp/git-cache/dlobo/org.civicrm.module.cividiscount.git -b master civicrm/tools/extensions/cividiscount
Cloning into 'civicrm/tools/extensions/cividiscount'...
done.
+++ extract-url --cache-ttl 172800 civicrm=http://download.civicrm.org/civicrm-l10n-core/archives/civicrm-l10n-daily.tar.gz
[[Download http://download.civicrm.org/civicrm-l10n-core/archives/civicrm-l10n-daily.tar.gz to /buildkit/app/tmp/131e3f14455202cef9675b2359fffcf0-civicrm-l10n-daily.tar.gz]]
[[Extract tar file, /buildkit/app/tmp/131e3f14455202cef9675b2359fffcf0-civicrm-l10n-daily.tar.gz]]
+++ popd
~/build/dmaster ~ ~
+++ popd
~ ~
++ set +ex
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/packages/.git] from [/buildkit/app/tmp/git-cache/civicrm/civicrm-packages.git] to [https://github.com/civicrm/civicrm-packages.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/drupal/.git] from [/buildkit/app/tmp/git-cache/civicrm/civicrm-drupal.git] to [https://github.com/civicrm/civicrm-drupal.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/.git] from [/buildkit/app/tmp/git-cache/civicrm/civicrm-core.git] to [https://github.com/civicrm/civicrm-core.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/tools/extensions/civivolunteer/.git] from [/buildkit/app/tmp/git-cache/civicrm/civivolunteer.git] to [https://github.com/civicrm/civivolunteer.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/tools/extensions/org.civicrm.angularprofiles/.git] from [/buildkit/app/tmp/git-cache/ginkgostreet/org.civicrm.angularprofiles.git] to [https://github.com/ginkgostreet/org.civicrm.angularprofiles.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/tools/extensions/civisualize/.git] from [/buildkit/app/tmp/git-cache/TechToThePeople/civisualize.git] to [https://github.com/TechToThePeople/civisualize.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/tools/extensions/cividiscount/.git] from [/buildkit/app/tmp/git-cache/dlobo/org.civicrm.module.cividiscount.git] to [https://github.com/dlobo/org.civicrm.module.cividiscount.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm/tools/extensions/org.civicoop.civirules/.git] from [/buildkit/app/tmp/git-cache/civicrm/org.civicoop.civirules.git] to [https://github.com/civicoop/org.civicoop.civirules.git]
Change origin in [/buildkit/build/dmaster/sites/all/modules/civicrm_developer/.git] from [/buildkit/app/tmp/git-cache/eileenmcnaughton/civicrm_developer.git] to [https://github.com/eileenmcnaughton/civicrm_developer.git]
[[Install dmaster/default (type 'drupal-demo' in '/buildkit/build/dmaster')]]
[[Execute /buildkit/app/config/drupal-demo/install.sh]]
++ source /buildkit/app/config/drupal-demo/install.sh
+++ amp_install
+++ _amp_install_cms
+++ echo '[[Setup MySQL and HTTP for CMS]]'
[[Setup MySQL and HTTP for CMS]]
+++ cvutil_assertvars _amp_install_cms CMS_ROOT SITE_NAME SITE_ID TMPDIR
+++ _cvutil_assertvars_back=ehxB
+++ set +x
++++ mktemp.php ampvar
+++ local amp_vars_file_path=/tmp/ampvarXxS4iD
+++ local amp_name=cmsdefault
+++ '[' default == default ']'
+++ amp_name=cms
+++ '[' -n http://localhost:8080 ']'
+++ amp create -f --root=/buildkit/build/dmaster --name=cms --prefix=CMS_ --url=http://localhost:8080 --output-file=/tmp/ampvarXxS4iD --perm=admin
+++ source /tmp/ampvarXxS4iD
++++ CMS_URL=http://localhost:8080
++++ CMS_ROOT=/buildkit/build/dmaster
++++ CMS_DB_DSN='mysql://dmastercms_fybu3:7pWwdhTFdSliSz6S@mysql:3306/dmastercms_fybu3?new_link=true'
++++ CMS_DB_USER=dmastercms_fybu3
++++ CMS_DB_PASS=7pWwdhTFdSliSz6S
++++ CMS_DB_HOST=mysql
++++ CMS_DB_PORT=3306
++++ CMS_DB_NAME=dmastercms_fybu3
++++ CMS_DB_ARGS='--defaults-file='\''/buildkit/.amp/my.cnf.d/my.cnf-34aae2c401e569368388dde25e34cb61'\'' dmastercms_fybu3'
+++ rm -f /tmp/ampvarXxS4iD
+++ _amp_install_civi
+++ echo '[[Setup MySQL for Civi]]'
[[Setup MySQL for Civi]]
+++ cvutil_assertvars _amp_install_civi CMS_ROOT SITE_NAME SITE_ID TMPDIR
+++ _cvutil_assertvars_back=ehxB
+++ set +x
++++ mktemp.php ampvar
+++ local amp_vars_file_path=/tmp/ampvarwb66tH
+++ local amp_name=cividefault
+++ '[' default == default ']'
+++ amp_name=civi
+++ amp create -f --root=/buildkit/build/dmaster --name=civi --prefix=CIVI_ --skip-url --output-file=/tmp/ampvarwb66tH --perm=super
+++ source /tmp/ampvarwb66tH
++++ CIVI_URL=
++++ CIVI_ROOT=/buildkit/build/dmaster
++++ CIVI_DB_DSN='mysql://dmasterciv_q8x9w:F5JWLqRSZZEawxNn@mysql:3306/dmasterciv_q8x9w?new_link=true'
++++ CIVI_DB_USER=dmasterciv_q8x9w
++++ CIVI_DB_PASS=F5JWLqRSZZEawxNn
++++ CIVI_DB_HOST=mysql
++++ CIVI_DB_PORT=3306
++++ CIVI_DB_NAME=dmasterciv_q8x9w
++++ CIVI_DB_ARGS='--defaults-file='\''/buildkit/.amp/my.cnf.d/my.cnf-3979666c39136681929994a6f613b763'\'' dmasterciv_q8x9w'
+++ rm -f /tmp/ampvarwb66tH
+++ _amp_install_test
+++ echo '[[Setup MySQL for Test]]'
[[Setup MySQL for Test]]
+++ cvutil_assertvars _amp_install_test CMS_ROOT SITE_NAME SITE_ID TMPDIR
+++ _cvutil_assertvars_back=ehxB
+++ set +x
++++ mktemp.php ampvar
+++ local amp_vars_file_path=/tmp/ampvarRpEQTF
+++ local amp_name=testdefault
+++ '[' default == default ']'
+++ amp_name=test
+++ amp create -f --root=/buildkit/build/dmaster --name=test --prefix=TEST_ --skip-url --output-file=/tmp/ampvarRpEQTF --perm=super
+++ source /tmp/ampvarRpEQTF
++++ TEST_URL=
++++ TEST_ROOT=/buildkit/build/dmaster
++++ TEST_DB_DSN='mysql://dmastertes_3f08d:NOoHUiXsmYVgKq66@mysql:3306/dmastertes_3f08d?new_link=true'
++++ TEST_DB_USER=dmastertes_3f08d
++++ TEST_DB_PASS=NOoHUiXsmYVgKq66
++++ TEST_DB_HOST=mysql
++++ TEST_DB_PORT=3306
++++ TEST_DB_NAME=dmastertes_3f08d
++++ TEST_DB_ARGS='--defaults-file='\''/buildkit/.amp/my.cnf.d/my.cnf-1967d0bdc55ac73e7ee9322e0bb68e42'\'' dmastertes_3f08d'
+++ rm -f /tmp/ampvarRpEQTF
+++ drupal_install
+++ drupal7_install
+++ cvutil_assertvars drupal7_install CMS_ROOT SITE_ID CMS_TITLE CMS_DB_USER CMS_DB_PASS CMS_DB_HOST CMS_DB_NAME ADMIN_USER ADMIN_PASS CMS_URL
+++ _cvutil_assertvars_back=ehxB
+++ set +x
++++ _drupal_multisite_dir http://localhost:8080 default
++++ '[' default == default ']'
++++ echo default
+++ DRUPAL_SITE_DIR=default
++++ cvutil_build_hostport mysql 3306
++++ local host=mysql
++++ local port=3306
++++ '[' -z 3306 ']'
++++ echo mysql:3306
+++ CMS_DB_HOSTPORT=mysql:3306
+++ pushd /buildkit/build/dmaster
+++ '[' -f sites/default/settings.php ']'
+++ drush site-install -y --db-url=mysql://dmastercms_fybu3:7pWwdhTFdSliSz6S@mysql:3306/dmastercms_fybu3 --account-name=admin --account-pass=A5XdnHm6gSfc --account-mail=admin@example.com '--site-name=CiviCRM Sandbox on Drupal' --sites-subdir=default
You are about to create a sites/default/settings.php file and DROP all tables in your 'dmastercms_fybu3' database. Do you want to continue? (y/n): y
No tables to drop.                                                   [ok]
Starting Drupal installation. This takes a few seconds ...           [ok]
Installation complete.  User name: admin  User password: A5XdnHm6gSfc[ok]
+++ chmod u+w sites/default
+++ chmod u+w sites/default/settings.php
+++ cvutil_inject_settings /buildkit/build/dmaster/sites/default/settings.php drupal.settings.d
+++ local FILE=/buildkit/build/dmaster/sites/default/settings.php
+++ local NAME=drupal.settings.d
+++ cvutil_assertvars cvutil_inject_settings PRJDIR SITE_NAME SITE_TYPE SITE_CONFIG_DIR SITE_ID SITE_TOKEN PRIVATE_ROOT FILE NAME
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ local TMPFILE=/buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
+++ cvutil_makeparent /buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
++++ dirname /buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
+++ parent=/buildkit/app/tmp/drupal-demo/dmaster
+++ '[' '!' -d /buildkit/app/tmp/drupal-demo/dmaster ']'
+++ mkdir -p /buildkit/app/tmp/drupal-demo/dmaster
+++ cat
+++ sed 's/^<?php//'
+++ cat
+++ cat
+++ chmod u-w sites/default/settings.php
+++ amp datadir sites/default/files /buildkit/app/private/dmaster/default
Update data directory: sites/default/files
Create data directory: /buildkit/app/private/dmaster/default
+++ cvutil_mkdir sites/default/modules
+++ for f in '"$@"'
+++ '[' '!' -d sites/default/modules ']'
+++ mkdir -p sites/default/modules
+++ drush vset --yes file_private_path /buildkit/app/private/dmaster/default
file_private_path was set to "/buildkit/app/private/dmaster/default".[success]
+++ '[' -n '' ']'
+++ popd
++++ _drupal_multisite_dir http://localhost:8080 default
++++ '[' default == default ']'
++++ echo default
+++ DRUPAL_SITE_DIR=default
+++ CIVI_DOMAIN_NAME='Demonstrators Anonymous'
+++ CIVI_DOMAIN_EMAIL='"Demonstrators Anonymous" <info@example.org>'
+++ CIVI_CORE=/buildkit/build/dmaster/sites/all/modules/civicrm
+++ CIVI_SETTINGS=/buildkit/build/dmaster/sites/default/civicrm.settings.php
+++ CIVI_FILES=/buildkit/build/dmaster/sites/default/files/civicrm
+++ CIVI_TEMPLATEC=/buildkit/build/dmaster/sites/default/files/civicrm/templates_c
+++ CIVI_UF=Drupal
+++ [[ master =~ ^4.[0123456](\.([0-9]|alpha|beta)+)?$ ]]
+++ civicrm_install
+++ cvutil_assertvars civicrm_install CIVI_CORE CIVI_FILES CIVI_TEMPLATEC CIVI_DOMAIN_NAME CIVI_DOMAIN_EMAIL
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ '[' '!' -d /buildkit/build/dmaster/sites/all/modules/civicrm/bin -o '!' -d /buildkit/build/dmaster/sites/all/modules/civicrm/CRM ']'
+++ amp datadir /buildkit/build/dmaster/sites/default/files/civicrm /buildkit/build/dmaster/sites/default/files/civicrm/templates_c
Create data directory: /buildkit/build/dmaster/sites/default/files/civicrm
Create data directory: /buildkit/build/dmaster/sites/default/files/civicrm/templates_c
+++ '[' -n '' ']'
+++ civicrm_make_settings_php
+++ cvutil_assertvars civicrm_make_settings_php CIVI_SETTINGS CIVI_CORE CIVI_UF CIVI_TEMPLATEC CMS_URL CIVI_SITE_KEY
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ cvutil_assertvars civicrm_make_settings_php CMS_DB_HOST CMS_DB_NAME CMS_DB_PASS CMS_DB_USER
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ cvutil_assertvars civicrm_make_settings_php CIVI_DB_HOST CIVI_DB_NAME CIVI_DB_PASS CIVI_DB_USER
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ cvutil_assertvars civicrm_make_settings_php SITE_CONFIG_DIR
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ local tpl
+++ for tpl in templates/CRM/common/civicrm.settings.php.template templates/CRM/common/civicrm.settings.php.tpl
+++ '[' -f /buildkit/build/dmaster/sites/all/modules/civicrm/templates/CRM/common/civicrm.settings.php.template ']'
+++ break
+++ '[' '!' -f /buildkit/build/dmaster/sites/all/modules/civicrm/templates/CRM/common/civicrm.settings.php.template ']'
++++ cvutil_build_hostport mysql 3306
++++ local host=mysql
++++ local port=3306
++++ '[' -z 3306 ']'
++++ echo mysql:3306
+++ CMS_DB_HOSTPORT=mysql:3306
++++ cvutil_build_hostport mysql 3306
++++ local host=mysql
++++ local port=3306
++++ '[' -z 3306 ']'
++++ echo mysql:3306
+++ CIVI_DB_HOSTPORT=mysql:3306
++++ cvutil_build_hostport mysql 3306
++++ local host=mysql
++++ local port=3306
++++ '[' -z 3306 ']'
++++ echo mysql:3306
+++ TEST_DB_HOSTPORT=mysql:3306
+++ cat /buildkit/build/dmaster/sites/all/modules/civicrm/templates/CRM/common/civicrm.settings.php.template
+++ sed 's;%%baseURL%%;http://localhost:8080;'
+++ sed 's;%%cms%%;Drupal;'
+++ sed 's;%%CMSdbName%%;dmastercms_fybu3;'
+++ sed 's;%%CMSdbPass%%;7pWwdhTFdSliSz6S;'
+++ sed 's;%%CMSdbHost%%;mysql:3306;'
+++ sed 's;%%crmRoot%%;/buildkit/build/dmaster/sites/all/modules/civicrm/;'
+++ sed 's;%%dbPass%%;F5JWLqRSZZEawxNn;'
+++ sed 's;%%CMSdbUser%%;dmastercms_fybu3;'
+++ sed 's;%%testName%%;dmastertes_3f08d;'
+++ sed 's;%%testPass%%;NOoHUiXsmYVgKq66;'
+++ sed 's;%%testUser%%;dmastertes_3f08d;'
+++ sed 's;%%siteKey%%;BZQUPnhtoV1WSPmQ;'
+++ sed 's;%%templateCompileDir%%;/buildkit/build/dmaster/sites/default/files/civicrm/templates_c;'
+++ sed 's;%%testHost%%;mysql:3306;'
+++ sed 's;%%dbHost%%;mysql:3306;'
+++ sed 's;%%dbName%%;dmasterciv_q8x9w;'
+++ sed 's;%%dbUser%%;dmasterciv_q8x9w;'
+++ echo
+++ '[' -n '' ']'
+++ cvutil_inject_settings /buildkit/build/dmaster/sites/default/civicrm.settings.php civicrm.settings.d
+++ local FILE=/buildkit/build/dmaster/sites/default/civicrm.settings.php
+++ local NAME=civicrm.settings.d
+++ cvutil_assertvars cvutil_inject_settings PRJDIR SITE_NAME SITE_TYPE SITE_CONFIG_DIR SITE_ID SITE_TOKEN PRIVATE_ROOT FILE NAME
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ local TMPFILE=/buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
+++ cvutil_makeparent /buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
++++ dirname /buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
+++ parent=/buildkit/app/tmp/drupal-demo/dmaster
+++ '[' '!' -d /buildkit/app/tmp/drupal-demo/dmaster ']'
+++ cat
+++ sed 's/^<?php//'
+++ cat
+++ cat
+++ civicrm_make_setup_conf
+++ cvutil_assertvars civicrm_make_setup_conf PRJDIR CMS_ROOT CIVI_CORE CIVI_UF CIVI_DB_NAME CIVI_DB_USER CIVI_DB_PASS
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ cat
+++ civicrm_make_test_settings_php
+++ cvutil_assertvars civicrm_make_test_settings_php CIVI_CORE CIVI_DB_NAME CIVI_DB_USER CIVI_DB_PASS CIVI_DB_HOST CMS_URL CMS_DB_USER CMS_DB_PASS CMS_DB_HOST CMS_DB_NAME ADMIN_USER ADMIN_PASS DEMO_USER DEMO_PASS CIVI_SITE_KEY
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ '[' -d /buildkit/build/dmaster/sites/all/modules/civicrm/tests/phpunit/CiviTest ']'
+++ cat
+++ cvutil_inject_settings /buildkit/build/dmaster/sites/all/modules/civicrm/tests/phpunit/CiviTest/civicrm.settings.local.php civitest.settings.d
+++ local FILE=/buildkit/build/dmaster/sites/all/modules/civicrm/tests/phpunit/CiviTest/civicrm.settings.local.php
+++ local NAME=civitest.settings.d
+++ cvutil_assertvars cvutil_inject_settings PRJDIR SITE_NAME SITE_TYPE SITE_CONFIG_DIR SITE_ID SITE_TOKEN PRIVATE_ROOT FILE NAME
+++ _cvutil_assertvars_back=ehxB
+++ set +x
+++ local TMPFILE=/buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
+++ cvutil_makeparent /buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
++++ dirname /buildkit/app/tmp/drupal-demo/dmaster/default.settings.tmp
+++ parent=/buildkit/app/tmp/drupal-demo/dmaster
+++ '[' '!' -d /buildkit/app/tmp/drupal-demo/dmaster ']'
+++ cat
+++ sed 's/^<?php//'
+++ cat
+++ cat
+++ cat
+++ pushd /buildkit/build/dmaster/sites/all/modules/civicrm
+++ '[' -e xml -a -e bin/setup.sh -a -n '' ']'
+++ '[' -e xml -a -e bin/setup.sh -a -z '' ']'
+++ env SITE_ID=default bash ./bin/setup.sh
+ '[' -n 1 ']'
+ pushd /buildkit/build/dmaster/sites/all/modules/civicrm/./bin/..
~/build/dmaster/sites/all/modules/civicrm ~/build/dmaster/sites/all/modules/civicrm
++ pickcmd composer composer.phar
++ for name in '"$@"'
++ which composer
++ echo composer
++ return
+ COMPOSER=composer
+ composer install
Loading composer repositories with package information
Installing dependencies (including require-dev) from lock file
Package operations: 35 installs, 0 updates, 0 removals
  - Installing psr/log (1.0.0): Downloading (100%)         
  - Installing phpseclib/phpseclib (1.0.7): Downloading (100%)         
  - Installing civicrm/civicrm-cxn-rpc (v0.17.07.01): Downloading (100%)         
  - Installing symfony/event-dispatcher (v2.6.13): Downloading (100%)         
  - Installing civicrm/civicrm-setup (v0.2.0): Downloading (100%)         
  - Installing sabberworm/php-css-parser (6.0.1): Downloading (100%)         
  - Installing phenx/php-svg-lib (v0.2): Downloading (100%)         
  - Installing phenx/php-font-lib (0.5): Downloading (100%)         
  - Installing dompdf/dompdf (v0.8.0): Downloading (100%)         
  - Installing electrolinux/phpquery (0.9.6): Downloading (100%)         
  - Installing psr/http-message (1.0.1): Downloading (100%)         
  - Installing guzzlehttp/psr7 (1.4.2): Downloading (100%)         
  - Installing guzzlehttp/promises (v1.3.1): Downloading (100%)         
  - Installing guzzlehttp/guzzle (6.3.0): Downloading (100%)         
  - Installing marcj/topsort (1.1.0): Downloading (100%)         
  - Installing pclzip/pclzip (2.8.2): Downloading (100%)         
  - Installing pear/pear_exception (v1.0.0): Downloading (100%)         
  - Installing pear/auth_sasl (v1.1.0): Downloading (100%)         
  - Installing pear/net_socket (1.0.14): Downloading (100%)         
  - Installing pear/net_smtp (1.6.3): Downloading (100%)         
  - Installing pear/validate_finance_creditcard (dev-master a74da65): Cloning a74da657d7
  - Installing zendframework/zend-stdlib (2.4.13): Downloading (100%)         
  - Installing zendframework/zend-escaper (2.4.13): Downloading (100%)         
  - Installing phpoffice/common (v0.2.6): Downloading (100%)         
  - Installing phpoffice/phpword (v0.14.0): Downloading (100%)         
  - Installing symfony/filesystem (v2.6.13): Downloading (100%)         
  - Installing symfony/config (v2.6.13): Downloading (100%)         
  - Installing symfony/dependency-injection (v2.6.13): Downloading (100%)         
  - Installing symfony/finder (v2.6.13): Downloading (100%)         
  - Installing symfony/process (v2.6.13): Downloading (100%)         
  - Installing tecnickcom/tcpdf (6.2.13): Downloading (100%)         
  - Installing totten/ca-config (v17.05.0): Downloading (100%)         
  - Installing zendframework/zend-validator (2.4.13): Downloading (100%)         
  - Installing zetacomponents/base (1.7): Downloading (100%)         
  - Installing zetacomponents/mail (dev-1.7-civi e0feff0): Cloning e0feff0e18
phpseclib/phpseclib suggests installing ext-gmp (Install the GMP (GNU Multiple Precision) extension in order to speed up arbitrary precision integer arithmetic operations.)
phpseclib/phpseclib suggests installing pear-pear/PHP_Compat (Install PHP_Compat to get phpseclib working on PHP < 5.0.0.)
symfony/event-dispatcher suggests installing symfony/http-kernel ()
zendframework/zend-stdlib suggests installing zendframework/zend-eventmanager (To support aggregate hydrator usage)
zendframework/zend-stdlib suggests installing zendframework/zend-filter (To support naming strategy hydrator usage)
zendframework/zend-stdlib suggests installing zendframework/zend-serializer (Zend\Serializer component)
zendframework/zend-stdlib suggests installing zendframework/zend-servicemanager (To support hydrator plugin manager usage)
phpoffice/phpword suggests installing ext-gd2 (Allows adding images)
phpoffice/phpword suggests installing ext-xsl (Allows applying XSL style sheet to headers, to main document part, and to footers of an OOXML template)
symfony/dependency-injection suggests installing symfony/proxy-manager-bridge (Generate service proxies to lazy load them)
symfony/dependency-injection suggests installing symfony/yaml ()
zendframework/zend-validator suggests installing zendframework/zend-db (Zend\Db component)
zendframework/zend-validator suggests installing zendframework/zend-filter (Zend\Filter component, required by the Digits validator)
zendframework/zend-validator suggests installing zendframework/zend-i18n (Zend\I18n component to allow translation of validation error messages as well as to use the various Date validators)
zendframework/zend-validator suggests installing zendframework/zend-math (Zend\Math component)
zendframework/zend-validator suggests installing zendframework/zend-resources (Translations of validator messages)
zendframework/zend-validator suggests installing zendframework/zend-servicemanager (Zend\ServiceManager component to allow using the ValidatorPluginManager and validator chains)
zendframework/zend-validator suggests installing zendframework/zend-session (Zend\Session component)
zendframework/zend-validator suggests installing zendframework/zend-uri (Zend\Uri component, required by the Uri and Sitemap\Loc validators)
Generating autoload files
> bash tools/scripts/composer/dompdf-cleanup.sh
patching file vendor/dompdf/dompdf/src/Dompdf.php
> bash tools/scripts/composer/tcpdf-cleanup.sh
> bash tools/scripts/composer/pear-exception-fix.sh
> bash tools/scripts/composer/net-smtp-fix.sh
patching file vendor/pear/net_smtp/Net/SMTP.php
patching file vendor/pear/net_smtp/Net/SMTP.php
patching file vendor/pear/net_smtp/Net/SMTP.php
patching file vendor/pear/net_smtp/Net/SMTP.php
> bash tools/scripts/composer/phpword-jquery.sh
+ has_commands bower karma
+ for cmd in '"$@"'
+ which bower
+ for cmd in '"$@"'
+ which karma
+ return 0
+ npm install --production

> civicrm@4.6.0 postinstall /buildkit/build/dmaster/sites/all/modules/civicrm
> bash tools/scripts/npm/postinstall.sh

npm notice created a lockfile as package-lock.json. You should commit this file.
up to date in 0.225s
++ pickcmd node_modules/bower/bin/bower bower
++ for name in '"$@"'
++ which node_modules/bower/bin/bower
++ for name in '"$@"'
++ which bower
++ echo bower
++ return
+ BOWER=bower
+ '[' -f bower ']'
+ '[' -n '' ']'
+ '[' '!' -f bower_components/.setupsh.ts ']'
+ BOWER_OPT=-f
+ '[' -f bower_components/.setupsh.ts ']'
+ bower install -f
bower resolve       https://github.com/totten/angular-jquery-dialog-service.git#civicrm
bower resolve       https://github.com/colemanw/select2.git#stable/3.5
bower resolve       https://github.com/mbostock-bower/d3-bower.git#3.4.11
bower resolve       https://github.com/jquery/qunit.git#~1.10
bower resolve       https://github.com/facultymatt/angular-unsavedChanges.git#~0.1.1
bower resolve       https://github.com/angular/bower-angular-mocks.git#~1.5.0
bower resolve       https://github.com/components/jqueryui.git#~1.12
bower resolve       https://github.com/jzaefferer/jquery-validation.git#~1.13
bower resolve       https://github.com/lodash/lodash-compat.git#~3.0
bower resolve       https://github.com/vakata/jstree.git#~3
bower resolve       https://github.com/ckeditor/ckeditor-releases.git#~4.5
bower resolve       https://github.com/DataTables/DataTables.git#~1.10
bower resolve       https://github.com/angular/bower-angular-sanitize.git#~1.5.0
bower resolve       https://github.com/NickQiZhu/dc.js.git#~2.1.8
bower resolve       https://github.com/crossfilter/crossfilter.git#~1.3.11
bower resolve       https://github.com/angular/bower-angular.git#~1.5.0
bower resolve       https://github.com/conversocial/phantomjs-polyfill.git#^0.0.2
bower resolve       https://github.com/mbostock-bower/d3-bower.git#~3.5.17
bower resolve       https://github.com/angular-ui/ui-sortable.git#0.12.x
bower resolve       https://github.com/angular-ui/ui-utils.git#0.1.x
bower resolve       https://github.com/tcollard/google-code-prettify.git#~1.0
bower resolve       https://github.com/FortAwesome/Font-Awesome.git#~4
bower resolve       https://github.com/jquery/jquery-dist.git#~1.12
bower resolve       https://github.com/angular/bower-angular-route.git#~1.5.0
bower resolve       https://github.com/angular-ui/bootstrap-bower.git#^2.5.0
bower resolve       https://github.com/nervgh/angular-file-upload.git#>=1.1.5 <=1.1.6
bower download      https://github.com/totten/angular-jquery-dialog-service/archive/civicrm.tar.gz
bower download      https://github.com/colemanw/select2/archive/stable/3.5.tar.gz
bower download      https://github.com/facultymatt/angular-unsavedChanges/archive/v0.1.1.tar.gz
bower download      https://github.com/mbostock-bower/d3-bower/archive/v3.5.17.tar.gz
bower download      https://github.com/mbostock-bower/d3-bower/archive/v3.4.11.tar.gz
bower download      https://github.com/jquery/qunit/archive/v1.10.0.tar.gz
bower download      https://github.com/components/jqueryui/archive/1.12.1.tar.gz
bower download      https://github.com/lodash/lodash-compat/archive/3.0.1.tar.gz
bower extract       angular-jquery-dialog-service#civicrm archive.tar.gz
bower resolved      https://github.com/totten/angular-jquery-dialog-service.git#8c5d302ce9
bower download      https://github.com/angular/bower-angular-mocks/archive/v1.5.11.tar.gz
bower download      https://github.com/jzaefferer/jquery-validation/archive/1.13.1.tar.gz
bower download      https://github.com/vakata/jstree/archive/3.3.5.tar.gz
bower extract       select2#stable/3.5 archive.tar.gz
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/35368a19f307e4af02d0df055846840d-1306-YAxs3H/bower.json
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field has to contain only 1 file per filetype; found multiple .png files: ["select2.png","select2x2.png"]
bower resolved      https://github.com/colemanw/select2.git#90d4b9ee38
bower download      https://github.com/ckeditor/ckeditor-releases/archive/4.5.11.tar.gz
bower resolve       https://github.com/jquery/jquery-dist.git#>= 1.7.1
bower extract       angular-unsavedChanges#~0.1.1 archive.tar.gz
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/6731bbc27c37c58c64ec4701b2519568-1306-IxiEHU/bower.json
bower invalid-meta  The "name" is recommended to be lowercase, can contain digits, dots, dashes
bower resolved      https://github.com/facultymatt/angular-unsavedChanges.git#0.1.1
bower download      https://github.com/DataTables/DataTables/archive/1.10.16.tar.gz
bower extract       d3-3.5.x#~3.5.17 archive.tar.gz
bower resolved      https://github.com/mbostock-bower/d3-bower.git#3.5.17
bower resolve       https://github.com/angular/bower-angular.git#~1.2.5
bower extract       d3#3.4.11 archive.tar.gz
bower resolved      https://github.com/mbostock-bower/d3-bower.git#3.4.11
bower extract       qunit#~1.10 archive.tar.gz
bower resolved      https://github.com/jquery/qunit.git#1.10.0
bower download      https://github.com/angular/bower-angular-sanitize/archive/v1.5.11.tar.gz
bower download      https://github.com/NickQiZhu/dc.js/archive/2.1.10.tar.gz
bower download      https://github.com/crossfilter/crossfilter/archive/1.3.14.tar.gz
bower download      https://github.com/conversocial/phantomjs-polyfill/archive/v0.0.2.tar.gz
bower extract       angular-mocks#~1.5.0 archive.tar.gz
bower resolved      https://github.com/angular/bower-angular-mocks.git#1.5.11
bower download      https://github.com/angular/bower-angular/archive/v1.2.32.tar.gz
bower download      https://github.com/angular/bower-angular/archive/v1.5.11.tar.gz
bower download      https://github.com/angular-ui/ui-sortable/archive/v0.12.11.tar.gz
bower extract       jstree#~3 archive.tar.gz
bower extract       jquery-ui#~1.12 archive.tar.gz
bower extract       lodash-compat#~3.0 archive.tar.gz
bower download      https://github.com/tcollard/google-code-prettify/archive/v1.0.5.tar.gz
bower resolved      https://github.com/lodash/lodash-compat.git#3.0.1
bower resolved      https://github.com/vakata/jstree.git#3.3.5
bower download      https://github.com/angular-ui/ui-utils/archive/v0.1.1.tar.gz
bower resolve       https://github.com/jquery/jquery-dist.git#>=1.9.1
bower download      https://github.com/FortAwesome/Font-Awesome/archive/v4.7.0.tar.gz
bower download      https://github.com/jquery/jquery-dist/archive/3.3.1.tar.gz
bower download      https://github.com/jquery/jquery-dist/archive/3.3.1.tar.gz
bower download      https://github.com/jquery/jquery-dist/archive/1.12.4.tar.gz
bower extract       ckeditor#~4.5 archive.tar.gz
bower extract       datatables#~1.10 archive.tar.gz
bower extract       angular-sanitize#~1.5.0 archive.tar.gz
bower resolved      https://github.com/angular/bower-angular-sanitize.git#1.5.11
bower extract       crossfilter-1.3.x#~1.3.11 archive.tar.gz
bower extract       jquery-validation#~1.13 archive.tar.gz
bower extract       angular-ui-sortable#0.12.x archive.tar.gz
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/06669348abd69fdff10f03f7c7ff1571-1306-DAG45W/bower.json
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field cannot contain font, image, audio, or video files
bower invalid-meta  The "main" field has to contain only 1 file per filetype; found multiple .png files: ["media/images/sort_asc.png","media/images/sort_asc_disabled.png","media/images/sort_both.png","media/images/sort_desc.png","media/images/sort_desc_disabled.png"]
bower resolved      https://github.com/angular-ui/ui-sortable.git#0.12.11
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/7acfcad9e23c80333653a6e5d55428e5-1306-y59j4r/bower.json
bower invalid-meta  The "main" field cannot contain minified files
bower download      https://github.com/angular-ui/bootstrap-bower/archive/2.5.0.tar.gz
bower resolved      https://github.com/crossfilter/crossfilter.git#1.3.14
bower resolve       https://github.com/components/jqueryui.git#>=1.9
bower download      https://github.com/components/jqueryui/archive/1.12.1.tar.gz
bower extract       phantomjs-polyfill#^0.0.2 archive.tar.gz
bower resolved      https://github.com/conversocial/phantomjs-polyfill.git#0.0.2
bower resolved      https://github.com/DataTables/DataTables.git#1.10.16
bower download      https://github.com/nervgh/angular-file-upload/archive/v1.1.6.tar.gz
bower resolve       https://github.com/jquery/jquery-dist.git#>=1.7.0
bower download      https://github.com/jquery/jquery-dist/archive/3.3.1.tar.gz
bower download      https://github.com/angular/bower-angular-route/archive/v1.5.11.tar.gz
bower extract       angular-ui-utils#0.1.x archive.tar.gz
bower extract       angular#~1.2.5 archive.tar.gz
bower extract       angular#~1.5.0 archive.tar.gz
bower resolved      https://github.com/angular-ui/ui-utils.git#0.1.1
bower resolved      https://github.com/angular/bower-angular.git#1.2.32
bower resolved      https://github.com/angular/bower-angular.git#1.5.11
bower extract       jquery#~1.12 archive.tar.gz
bower resolved      https://github.com/components/jqueryui.git#1.12.1
bower resolve       https://github.com/angular/bower-angular.git#>= 1.0.2
bower download      https://github.com/angular/bower-angular/archive/v1.6.9.tar.gz
bower resolve       https://github.com/jquery/jquery-dist.git#>=1.6
bower extract       jquery#>=1.9.1 archive.tar.gz
bower resolved      https://github.com/jzaefferer/jquery-validation.git#1.13.1
bower download      https://github.com/jquery/jquery-dist/archive/3.3.1.tar.gz
bower extract       jquery#>= 1.7.1 archive.tar.gz
bower resolve       https://github.com/jquery/jquery-dist.git#>= 1.6.4
bower download      https://github.com/jquery/jquery-dist/archive/3.3.1.tar.gz
bower resolved      https://github.com/jquery/jquery-dist.git#1.12.4
bower resolved      https://github.com/jquery/jquery-dist.git#3.3.1
bower resolved      https://github.com/jquery/jquery-dist.git#3.3.1
bower extract       font-awesome#~4 archive.tar.gz
bower extract       angular-file-upload#>=1.1.5 <=1.1.6 archive.tar.gz
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/e60440287b4df1cbc04045e77a8c05f5-1306-lSlNzt/bower.json
bower invalid-meta  The "main" field cannot contain minified files
bower resolved      https://github.com/nervgh/angular-file-upload.git#1.1.6
bower extract       angular-route#~1.5.0 archive.tar.gz
bower extract       angular-bootstrap#^2.5.0 archive.tar.gz
bower resolved      https://github.com/angular/bower-angular-route.git#1.5.11
bower resolved      https://github.com/angular-ui/bootstrap-bower.git#2.5.0
bower extract       jquery#>=1.7.0 archive.tar.gz
bower extract       google-code-prettify#~1.0 archive.tar.gz
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/8b46b49e999a9774c040fd46f81a68a5-1306-bJ3Ymq/bower.json
bower invalid-meta  The "main" field cannot contain minified files
bower invalid-meta  The "main" field cannot contain minified files
bower resolved      https://github.com/jquery/jquery-dist.git#3.3.1
bower extract       angular#>= 1.0.2 archive.tar.gz
bower resolved      https://github.com/tcollard/google-code-prettify.git#1.0.5
bower extract       jquery#>=1.6 archive.tar.gz
bower extract       jquery#>= 1.6.4 archive.tar.gz
bower resolved      https://github.com/angular/bower-angular.git#1.6.9
bower resolved      https://github.com/FortAwesome/Font-Awesome.git#4.7.0
bower resolved      https://github.com/jquery/jquery-dist.git#3.3.1
bower resolved      https://github.com/jquery/jquery-dist.git#3.3.1
bower extract       jquery-ui#>=1.9 archive.tar.gz
bower resolved      https://github.com/components/jqueryui.git#1.12.1
bower extract       dc-2.1.x#~2.1.8 archive.tar.gz
bower resolved      https://github.com/ckeditor/ckeditor-releases.git#4.5.11
bower resolved      https://github.com/NickQiZhu/dc.js.git#2.1.10
bower resolve       https://github.com/crossfilter/crossfilter.git#~1.4
bower download      https://github.com/crossfilter/crossfilter/archive/1.4.5.tar.gz
bower extract       crossfilter2#~1.4 archive.tar.gz
bower invalid-meta  for:/tmp/550d555f5b5f0a9ce099b809d4149b07/bower/cfc7aab525b6a272826f0d7b1046426e-1306-dUldpB/bower.json
bower invalid-meta  The "main" field cannot contain minified files
bower resolved      https://github.com/crossfilter/crossfilter.git#1.4.5

Please note that,
    angular-unsavedChanges#0.1.1 depends on angular#~1.2.5 which resolved to angular#1.2.32
    angular-ui-sortable#0.12.11 depends on angular#~1.2.x which resolved to angular#1.2.32
    angular-file-upload#1.1.6 depends on angular#~1.2.11 which resolved to angular#1.2.32
    angular-mocks#1.5.11, angular-route#1.5.11, angular-sanitize#1.5.11 depends on angular#1.5.11 which resolved to angular#1.5.11
    civicrm depends on angular#~1.5.0 which resolved to angular#1.5.11
    angular-bootstrap#2.5.0 depends on angular#>=1.4.0 which resolved to angular#1.5.11
    angular-ui-utils#0.1.1 depends on angular#>= 1.0.2 which resolved to angular#1.6.9
Resort to using angular#~1.5.11 which resolved to angular#1.5.11
Code incompatibilities may occur.

bower install       angular-jquery-dialog-service#8c5d302ce9
bower install       select2#90d4b9ee38
bower install       angular-unsavedChanges#0.1.1
bower install       d3-3.5.x#3.5.17
bower install       d3#3.4.11
bower install       qunit#1.10.0
bower install       angular-mocks#1.5.11
bower install       lodash-compat#3.0.1
bower install       jstree#3.3.5
bower install       angular-sanitize#1.5.11
bower install       angular-ui-sortable#0.12.11
bower install       crossfilter-1.3.x#1.3.14
bower install       phantomjs-polyfill#0.0.2
bower install       datatables#1.10.16
bower install       angular-ui-utils#0.1.1
bower install       angular#1.5.11
bower install       jquery-ui#1.12.1
bower install       jquery-validation#1.13.1
bower install       jquery#1.12.4
bower install       angular-file-upload#1.1.6
bower install       angular-route#1.5.11
bower install       angular-bootstrap#2.5.0
bower install       google-code-prettify#1.0.5
bower install       font-awesome#4.7.0
bower install       ckeditor#4.5.11
bower install       dc-2.1.x#2.1.10
bower install       crossfilter2#1.4.5

angular-jquery-dialog-service#8c5d302ce9 bower_components/angular-jquery-dialog-service

select2#90d4b9ee38 bower_components/select2
└── jquery#1.12.4

angular-unsavedChanges#0.1.1 bower_components/angular-unsavedChanges
└── angular#1.5.11

d3-3.5.x#3.5.17 bower_components/d3-3.5.x

d3#3.4.11 bower_components/d3

qunit#1.10.0 bower_components/qunit

angular-mocks#1.5.11 bower_components/angular-mocks
└── angular#1.5.11

lodash-compat#3.0.1 bower_components/lodash-compat

jstree#3.3.5 bower_components/jstree
└── jquery#1.12.4

angular-sanitize#1.5.11 bower_components/angular-sanitize
└── angular#1.5.11

angular-ui-sortable#0.12.11 bower_components/angular-ui-sortable
├── angular#1.5.11
└── jquery-ui#1.12.1

crossfilter-1.3.x#1.3.14 bower_components/crossfilter-1.3.x

phantomjs-polyfill#0.0.2 bower_components/phantomjs-polyfill

datatables#1.10.16 bower_components/datatables
└── jquery#1.12.4

angular-ui-utils#0.1.1 bower_components/angular-ui-utils
└── angular#1.5.11

angular#1.5.11 bower_components/angular

jquery-ui#1.12.1 bower_components/jquery-ui
└── jquery#1.12.4

jquery-validation#1.13.1 bower_components/jquery-validation
└── jquery#1.12.4

jquery#1.12.4 bower_components/jquery

angular-file-upload#1.1.6 bower_components/angular-file-upload
└── angular#1.5.11

angular-route#1.5.11 bower_components/angular-route
└── angular#1.5.11

angular-bootstrap#2.5.0 bower_components/angular-bootstrap
└── angular#1.5.11

google-code-prettify#1.0.5 bower_components/google-code-prettify

font-awesome#4.7.0 bower_components/font-awesome

ckeditor#4.5.11 bower_components/ckeditor

dc-2.1.x#2.1.10 bower_components/dc-2.1.x
├── crossfilter2#1.4.5
└── d3#3.4.11

crossfilter2#1.4.5 bower_components/crossfilter2
+ touch bower_components/.setupsh.ts
+ popd
~/build/dmaster/sites/all/modules/civicrm
+ '[' -n 1 -a -d /buildkit/build/dmaster/sites/all/modules/civicrm/./bin/../xml ']'
+ pushd /buildkit/build/dmaster/sites/all/modules/civicrm/./bin/../xml
~/build/dmaster/sites/all/modules/civicrm/xml ~/build/dmaster/sites/all/modules/civicrm
+ '[' -z 3306 ']'
+ PHP_MYSQL_HOSTPORT=mysql:3306
+ php -d mysql.default_host=mysql:3306 -d mysql.default_user=dmasterciv_q8x9w -d mysql.default_password=F5JWLqRSZZEawxNn GenCode.php schema/Schema.xml '' Drupal

civicrm_domain.version := 5.2.alpha1

Parsing schema description schema/Schema.xml
Extracting database information
Extracting table information
Generating civicrm.config.php
Generating civicrm-version file
Generating sql file
Generating sql drop tables file
Generating data files for en_US
Generating data files for af_ZA
Generating data files for ar_EG
Generating data files for bg_BG
Generating data files for ca_ES
Generating data files for cs_CZ
Generating data files for da_DK
Generating data files for de_CH
Generating data files for de_DE
Generating data files for el_GR
Generating data files for en_AU
Generating data files for en_CA
Generating data files for en_GB
Generating data files for es_ES
Generating data files for es_MX
Generating data files for et_EE
Generating data files for fa_IR
Generating data files for fi_FI
Generating data files for fr_CA
Generating data files for fr_FR
Generating data files for he_IL
Generating data files for hi_IN
Generating data files for hu_HU
Generating data files for id_ID
Generating data files for it_IT
Generating data files for ja_JP
Generating data files for km_KH
Generating data files for ko_KR
Generating data files for lt_LT
Generating data files for lv_LV
Generating data files for nb_NO
Generating data files for nl_NL
Generating data files for pl_PL
Generating data files for pt_BR
Generating data files for pt_PT
Generating data files for ro_RO
Generating data files for ru_RU
Generating data files for sk_SK
Generating data files for sl_SI
Generating data files for sq_AL
Generating data files for sr_RS
Generating data files for sv_SE
Generating data files for tr_TR
Generating data files for uk_UA
Generating data files for vi_VN
Generating data files for zh_CN
Generating data files for zh_TW
Generating navigation file
Generating CRM_Core_I18n_SchemaStructure...
+ popd
~/build/dmaster/sites/all/modules/civicrm
+ '[' -n 1 ']'
+ pushd /buildkit/build/dmaster/sites/all/modules/civicrm/./bin/../sql
~/build/dmaster/sites/all/modules/civicrm/sql ~/build/dmaster/sites/all/modules/civicrm
+ echo

+ echo 'Dropping civicrm_* tables from database dmasterciv_q8x9w'
Dropping civicrm_* tables from database dmasterciv_q8x9w
+ echo 'SELECT table_name FROM information_schema.TABLES  WHERE TABLE_SCHEMA='\''dmasterciv_q8x9w'\'' AND TABLE_TYPE = '\''VIEW'\'''
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w
+ grep '^\(civicrm_\|log_civicrm_\)'
+ awk -v 'NOFOREIGNCHECK=SET FOREIGN_KEY_CHECKS=0;' 'BEGIN {print NOFOREIGNCHECK}{print "drop view " $1 ";"}'
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w
+ echo 'SELECT table_name FROM information_schema.TABLES  WHERE TABLE_SCHEMA='\''dmasterciv_q8x9w'\'' AND TABLE_TYPE = '\''BASE TABLE'\'''
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w
+ grep '^\(civicrm_\|log_civicrm_\)'
+ awk -v 'NOFOREIGNCHECK=SET FOREIGN_KEY_CHECKS=0;' 'BEGIN {print NOFOREIGNCHECK}{print "drop table " $1 ";"}'
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w
+ echo

+ echo Creating database structure
Creating database structure
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w
+ popd
~/build/dmaster/sites/all/modules/civicrm
+ '[' -n 1 ']'
+ pushd /buildkit/build/dmaster/sites/all/modules/civicrm/./bin/../sql
~/build/dmaster/sites/all/modules/civicrm/sql ~/build/dmaster/sites/all/modules/civicrm
+ '[' -z ']'
+ echo

+ echo 'Populating database with dataset - civicrm_generated.mysql'
Populating database with dataset - civicrm_generated.mysql
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w
@option_most_id    := max(id)
94
@option_marital_id := max(id)
95
@ogid := MAX(id)
96
@cgid := MAX(id)
2
@cgid_contribution := MAX(id)
3
@ogid_contribution := MAX(id)
97
@dp            := max(id)
1
@dpTest        := max(id)
2
+ '[' '!' -z ']'
+ popd
~/build/dmaster/sites/all/modules/civicrm
+ '[' -n 1 ']'
+ pushd /buildkit/build/dmaster/sites/all/modules/civicrm/./bin/..
~/build/dmaster/sites/all/modules/civicrm ~/build/dmaster/sites/all/modules/civicrm
+ mysql -udmasterciv_q8x9w -pF5JWLqRSZZEawxNn -h mysql -P 3306 dmasterciv_q8x9w -e 'UPDATE civicrm_domain SET config_backend = NULL; UPDATE civicrm_setting SET value = NULL WHERE name = '\''userFrameworkResourceURL'\'';'
+ popd
~/build/dmaster/sites/all/modules/civicrm
+ echo

+ echo 'NOTE: Logout from your CMS to avoid session conflicts.'
NOTE: Logout from your CMS to avoid session conflicts.
+++ popd
+++ amp sql -Ncivi --root=/buildkit/build/dmaster
@option_group_id := id
31
+++ pushd /buildkit/build/dmaster/sites/default
+++ drush -y updatedb
4 byte UTF-8 for mysql is not activated, but it is supported on your [warning]
system. It is recommended that you enable this to allow 4-byte UTF-8
input such as emojis, Asian symbols and mathematical symbols to be
stored correctly. See the documentation on adding 4 byte UTF-8
support for more information. (Currently using Database 4 byte UTF-8
support Not enabled)
No database updates required                                         [success]
'all' cache was cleared.                                             [success]
Finished performing updates.                                         [ok]
+++ drush -y en civicrm toolbar locale garland login_destination userprotect
toolbar is already enabled.                                          [ok]
The following extensions will be enabled: civicrm, locale, login_destination, userprotect, garland
Do you really want to continue? (y/n): y
y
locale was enabled successfully.                                     [ok]
locale defines the following permissions: administer languages, translate interface
login_destination was enabled successfully.                          [ok]
login_destination defines the following permissions: administer login destination settings
userprotect was enabled successfully.                                [ok]
userprotect defines the following permissions: change own e-mail, change own password, change own openid, administer userprotect, edit own account
civicrm was enabled successfully.                                    [ok]
civicrm defines the following permissions: add contacts, view all contacts, edit all contacts, view my contact, edit my contact, delete contacts, access deleted contacts, import contacts, import SQL datasource, edit groups, administer CiviCRM, skip IDS check, access uploaded files, profile listings and forms, profile listings, profile create, profile edit, profile view, access all custom data, view all activities, delete activities, access CiviCRM, access Contact Dashboard, translate CiviCRM, manage tags, administer reserved groups, administer Tagsets, administer reserved tags, administer dedupe rules, merge duplicate contacts, force merge duplicate contacts, view debug output, view all notes, add contact notes, access AJAX API, access contact reference fields, create manual batch, edit own manual batches, edit all manual batches, close own manual batches, close all manual batches, reopen own manual batches, reopen all manual batches, view own manual batches, view all manual batches, delete own manual batches, delete all manual batches, export own manual batches, export all manual batches, administer payment processors, edit message templates, view my invoices, edit api keys, edit own api keys, send SMS, access CiviEvent, edit event participants, edit all events, register for events, view event info, view event participants, delete in CiviEvent, manage event profiles, access CiviContribute, edit contributions, make online contributions, delete in CiviContribute, access CiviMember, edit memberships, delete in CiviMember, access CiviMail, access CiviMail subscribe/unsubscribe pages, delete in CiviMail, view public CiviMail content, access CiviPledge, edit pledges, delete in CiviPledge, access CiviReport, access Report Criteria, administer private reports, administer reserved reports, administer Reports, view report sql
garland was enabled successfully.                                    [ok]
+++ drush -y dis overlay
The following extensions will be disabled: overlay
Do you really want to continue? (y/n): y
overlay was disabled successfully.                                   [ok]
+++ echo '{"enable_components":["CiviEvent","CiviContribute","CiviMember","CiviMail","CiviReport","CiviPledge","CiviCase","CiviCampaign","CiviGrant"]}'
+++ drush cvapi setting.create --in=json
Array
(
    [is_error] => 0
    [version] => 3
    [count] => 1
    [id] => 1
    [values] => Array
        (
            [1] => Array
                (
                    [enable_components] => Array
                        (
                            [0] => CiviEvent
                            [1] => CiviContribute
                            [2] => CiviMember
                            [3] => CiviMail
                            [4] => CiviReport
                            [5] => CiviPledge
                            [6] => CiviCase
                            [7] => CiviCampaign
                            [8] => CiviGrant
                        )

                )

        )

)

+++ civicrm_apply_demo_defaults
+++ cv ev 'exit(version_compare(CRM_Utils_System::version(), "4.7.0", "<") ?0:1);'
+++ cv api MailSettings.create id=1 is_default=1 domain=example.org debug=1
{
    "is_error": 0,
    "version": 3,
    "count": 1,
    "id": 1,
    "values": {
        "1": {
            "id": "1",
            "domain_id": "",
            "name": "",
            "is_default": "1",
            "domain": "example.org",
            "localpart": "",
            "return_path": "",
            "protocol": "",
            "server": "",
            "port": "",
            "username": "",
            "password": "",
            "is_ssl": "",
            "source": "",
            "activity_status": ""
        }
    },
    "xdebug": {
        "peakMemory": 24583568,
        "memory": 24531256,
        "timeIndex": 0.3375928401947
    }
}
+++ '[' -z '' ']'
+++ cv -vv ev 'eval(file_get_contents("php://stdin"));'

+++ cv ev 'if(is_callable(array("CRM_Core_BAO_CMSUser","synchronize"))){CRM_Core_BAO_CMSUser::synchronize(FALSE);}else{CRM_Utils_System::synchronizeUsers();}'

+++ export SITE_CONFIG_DIR
+++ drush -y -u admin scr /buildkit/app/config/drupal-demo/install-theme.php
+++ drush php-eval -u admin 'module_load_include("inc","block","block.admin"); block_admin_display();'
+++ drush -y scr /buildkit/app/config/drupal-demo/install-welcome.php
+++ drush -y vset site_frontpage welcome
site_frontpage was set to "welcome".                                 [success]
+++ drush -y scr /buildkit/app/config/drupal-demo/install-login-destination.php
+++ drush scr /buildkit/src/drush/perm.php
'all' cache was cleared.                                             [success]
+++ drush -y en civicrm_webtest
The following extensions will be enabled: civicrm_webtest
Do you really want to continue? (y/n): y
civicrm_webtest was enabled successfully.                            [ok]
+++ drush -y user-create --password=demo --mail=demo@example.com demo
 uid   :  2 

 name   :  demo 

 pass   :  $S$DdzWW6tTCplPHoJq8lkOYAv4.iLPZvE1Ji3xBp5ZhvDzzcveD.UM 

 mail   :  demo@example.com 

 theme   :   

 signature   :   

 signature_format:     

 created   :  1522970122 

 access   :  0 

 login   :  0 

 status   :  1 

 timezone:     

 language   :   

 picture:     

 init   :   

 2   :  authenticated user 

 rdftype    :  sioc:UserAccount 
 name       :  foaf:name        
 homepage   :  foaf:page        
               rel              

 user_created   :  Thu, 04/05/2018 - 23:15 

 user_access   :  Thu, 01/01/1970 - 00:00 

 user_login   :  Thu, 01/01/1970 - 00:00 

 user_status   :  active 


+++ drush -y user-add-role civicrm_webtest_user demo
Added the civicrm_webtest_user role to uid 2                         [success]
+++ drush scr /buildkit/src/drush/perm.php
'all' cache was cleared.                                             [success]
+++ drush -y cvapi extension.install key=org.civicrm.angularprofiles debug=1
Array
(
    [is_error] => 0
    [version] => 3
    [count] => 1
    [values] => 1
    [xdebug] => Array
        (
            [peakMemory] => 37184384
            [memory] => 37063368
            [timeIndex] => 90.543118953705
        )

)

+++ drush -y cvapi extension.install key=org.civicrm.volunteer debug=1
Array
(
    [is_error] => 0
    [version] => 3
    [count] => 1
    [values] => 1
    [xdebug] => Array
        (
            [peakMemory] => 42927000
            [memory] => 42803720
            [timeIndex] => 54.833338975906
        )

)

+++ drush scr /buildkit/src/drush/perm.php
'all' cache was cleared.                                             [success]
+++ drush -y -u admin cvapi extension.install key=org.civicoop.civirules debug=1
Array
(
    [is_error] => 0
    [version] => 3
    [count] => 1
    [values] => 1
    [xdebug] => Array
        (
            [peakMemory] => 40635824
            [memory] => 40522688
            [timeIndex] => 41.270503997803
        )

)

+++ drush -y -u admin cvapi extension.install key=eu.tttp.civisualize debug=1
Array
(
    [is_error] => 0
    [version] => 3
    [count] => 1
    [values] => 1
    [xdebug] => Array
        (
            [peakMemory] => 39509472
            [memory] => 39374472
            [timeIndex] => 33.773990154266
        )

)

+++ drush -y -u admin cvapi extension.install key=org.civicrm.module.cividiscount debug=1
Array
(
    [is_error] => 0
    [version] => 3
    [count] => 1
    [values] => 1
    [xdebug] => Array
        (
            [peakMemory] => 39871784
            [memory] => 39736848
            [timeIndex] => 37.245426177979
        )

)

+++ INSTALL_DASHBOARD_USERS='admin;demo'
+++ drush scr /buildkit/app/config/drupal-demo/install-dashboard.php
+++ popd
++ set +ex
[[Save CMS DB (dmastercms_fybu3) to file (/buildkit/app/snapshot/dmaster/cms.sql.gz)]]
[[Save Civi DB (dmasterciv_q8x9w) to file (/buildkit/app/snapshot/dmaster/civi.sql.gz)]]
[[Setup MySQL for Test]]
[[Restore "/buildkit/build/dmaster" DB (test) from file (/buildkit/app/snapshot/dmaster/civi.sql.gz)]]
[[Show site summary (dmaster/default)]]
 - CMS_ROOT: /buildkit/build/dmaster
 - CMS_URL: http://localhost:8080
 - CMS_DB_DSN: mysql://dmastercms_fybu3:7pWwdhTFdSliSz6S@mysql:3306/dmastercms_fybu3?new_link=true
 - CIVI_DB_DSN: mysql://dmasterciv_q8x9w:F5JWLqRSZZEawxNn@mysql:3306/dmasterciv_q8x9w?new_link=true
 - TEST_DB_DSN: mysql://dmastertes_3f08d:NOoHUiXsmYVgKq66@mysql:3306/dmastertes_3f08d?new_link=true
 - ADMIN_USER: admin
 - ADMIN_PASS: A5XdnHm6gSfc
 - DEMO_USER: demo
 - DEMO_PASS: demo
[[General notes]]
 - You may need to restart httpd.
 - You may need to add the hostname and IP to /etc/hosts or DNS.


# fititnt at bravo in /alligo/code/fititnt/civicrm-playground
$ docker ps
CONTAINER ID        IMAGE                     COMMAND                  CREATED             STATUS              PORTS                            NAMES
ed7b115b04ab        michaelmcandrew/civicrm   "docker-php-entrypoi…"   24 minutes ago      Up 23 minutes       80/tcp, 0.0.0.0:8080->8080/tcp   civicrmplayground_civicrm_1
37e1e72eb2a4        phpmyadmin/phpmyadmin     "/run.sh phpmyadmin"     24 minutes ago      Up 24 minutes       9000/tcp, 0.0.0.0:8081->80/tcp   civicrmplayground_phpmyadmin_1
f7b0d3bc7a96        djfarrelly/maildev        "bin/maildev --web 8…"   24 minutes ago      Up 24 minutes       25/tcp, 0.0.0.0:8082->80/tcp     civicrmplayground_maildev_1
f078e3739e82        mysql:5.7                 "docker-entrypoint.s…"   24 minutes ago      Up 24 minutes       3306/tcp                         civicrmplayground_mysql_1

# fititnt at bravo in /alligo/code/fititnt/civicrm-playground
$ docker-compose down --volumes --rmi all
Stopping civicrmplayground_civicrm_1    ... done
Stopping civicrmplayground_phpmyadmin_1 ... done
Stopping civicrmplayground_maildev_1    ... done
Stopping civicrmplayground_mysql_1      ... done
Removing civicrmplayground_civicrm_1    ... done
Removing civicrmplayground_phpmyadmin_1 ... done
Removing civicrmplayground_maildev_1    ... done
Removing civicrmplayground_mysql_1      ... done
Removing network civicrmplayground_default
Removing volume civicrmplayground_drush-cache
Removing volume civicrmplayground_git-cache
Removing volume civicrmplayground_composer-cache
Removing volume civicrmplayground_bower-cache
Removing volume civicrmplayground_buildkit
Removing volume civicrmplayground_mysql
Removing volume civicrmplayground_amp
Removing volume civicrmplayground_npm-cache
Removing image djfarrelly/maildev
Removing image mysql:5.7
Removing image michaelmcandrew/civicrm
Removing image phpmyadmin/phpmyadmin
ERROR: Failed to remove image for service phpmyadmin: 409 Client Error: Conflict ("conflict: unable to remove repository reference "phpmyadmin/phpmyadmin" (must force) - container c542bb7c93b1 is using its referenced image 328692480804")

