This is clean FULL databases what you can use (which is already imported to your OSPanel)
Main purpose of these files, for next case:
- you did something wrong, and wish return back sql database to original state
- you wish to trace some issue

What need to do?
- Delete your rathena_PRERE_db, and rathena_PRERE_log
- Import with phpmyadmin or console these database:
	1. mysql -uroot rathena_PRERE_db < rathena_PRERE_db.sql
	2. mysql -uroot rathena_PRERE_log < rathena_PRERE_log.sql


These database files generated from 18 April 2018


Important:
- Please change inside login table user and password for


     account_id: 1
         userid: s1changemeplease
      user_pass: s2changemeplease
            sex: S
          email: athena@athena.com
       group_id: 0
          state: 0
     unban_time: 0
expiration_time: 0
     logincount: 2
      lastlogin: 2018-04-18 10:57:29
        last_ip: 127.0.0.1
      birthdate: NULL
character_slots: 0
        pincode:
 pincode_change: 0
       vip_time: 0
      old_group: 0


See? Change it for something private what nobody will know.
After touching it, please make sure that you changed char_conf.txt and map_conf.txt files too
(old credentials in these files), it will make your offline server more secure!
Never share this info with anyone else.

Plus!

=======================


Important Note 2:
-----------------

By default you have two users with all privileges.
Please edit inter_conf.txt and change credentials to something more private.
Than, make a user with phpmyadmin (already you have this inside OSPanel)
and via webpanel edit it to something unique what nobody will know.



Important Note 3:
-----------------

By default this database and package database contains default users:

login: admin
pass: 123456
group_id: 99 (see groups.conf) (this is GM account with all privileges)

login: player
pass: 123456
group_id: 0 (see groups.conf) (this is normal player account without any commands or permissions)


login: player2
pass: 123456
group_id: 0 (see groups.conf) (this is normal player account without any commands or permissions)

For making a new account do:

login: yourloginname_M
pass: yourpassword

WHERE _M = is signal (trigger) for login-server for creating an account with loginname yourloginname and password: yourpassword
and where _M = for male, _F = for female

Example:

login: donaldtrump_M
pass: hilarymyslave

mean:

you will create an account called "donaldtrump"
with password "hilarymyslave"

Account Sex will be Male (because of _M)

