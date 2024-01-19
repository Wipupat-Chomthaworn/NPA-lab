devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ 

ansible webservers -m ping


192.0.2.3 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m command -a "/bin/echo hello world"
192.0.2.3 | CHANGED | rc=0 >>
hello world
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$


ansible-playbook -v test_apache_playbook.yaml
ansible-playbook -v install_apache_playbook.yaml
sudo systemctl status apache2
cat /etc/apache2/ports.conf

cat /etc/apache2/sites-available/000-default.conf
ansible-playbook install_apache_options_playbook.yaml

log:
devasc@labvm:~/labs/devnet-src$ cd ansible/
devasc@labvm:~/labs/devnet-src/ansible$ ls
ansible-apache  ansible-csr1000v
devasc@labvm:~/labs/devnet-src/ansible$ cd ansible-
bash: cd: ansible-: No such file or directory
devasc@labvm:~/labs/devnet-src/ansible$ cd ansible-
ansible-apache/   ansible-csr1000v/ 
devasc@labvm:~/labs/devnet-src/ansible$ cd ansible-apache/
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ pip install pyyaml

Command 'pip' not found, but there are 18 similar ones.

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m ping
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not match 'all'
[WARNING]: Could not match supplied host pattern, ignoring: webservers
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:e9:3d:e6 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic enp0s3
       valid_lft 84261sec preferred_lft 84261sec
    inet6 fe80::a00:27ff:fee9:3de6/64 scope link 
       valid_lft forever preferred_lft forever
3: dummy0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 7a:7a:6d:ea:3c:5c brd ff:ff:ff:ff:ff:ff
    inet 192.0.2.1/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.2/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.3/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.4/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.5/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet6 fe80::787a:6dff:feea:3c5c/64 scope link 
       valid_lft forever preferred_lft forever
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m ping
172.31.115.1 | UNREACHABLE! => {
    "changed": false,
    "msg": "Invalid/incorrect password: Warning: Permanently added '172.31.115.1' (RSA) to the list of known hosts.\r\n\r\n**************************************************************************\r\n* IOSv is strictly limited to use for evaluation, demonstration and IOS  *\r\n* education. IOSv is provided as-is and is not supported by Cisco's      *\r\n* Technical Advisory Center. Any use or disclosure, in whole or in part, *\r\n* of the IOSv Software or Documentation to any third party for any       *\r\n* purposes is expressly prohibited except as otherwise authorized by     *\r\n* Cisco in writing.                                                      *\r\n**************************************************************************",
    "unreachable": true
}
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m ping
172.31.115.1 | UNREACHABLE! => {
    "changed": false,
    "msg": "Invalid/incorrect password: \r\n**************************************************************************\r\n* IOSv is strictly limited to use for evaluation, demonstration and IOS  *\r\n* education. IOSv is provided as-is and is not supported by Cisco's      *\r\n* Technical Advisory Center. Any use or disclosure, in whole or in part, *\r\n* of the IOSv Software or Documentation to any third party for any       *\r\n* purposes is expressly prohibited except as otherwise authorized by     *\r\n* Cisco in writing.                                                      *\r\n**************************************************************************",
    "unreachable": true
}
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible --version
ansible 2.9.9
  config file = /home/devasc/labs/devnet-src/ansible/ansible-apache/ansible.cfg
  configured module search path = ['/home/devasc/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /home/devasc/.local/lib/python3.8/site-packages/ansible
  executable location = /home/devasc/.local/bin/ansible
  python version = 3.8.2 (default, Apr 27 2020, 15:53:34) [GCC 9.3.0]
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts
ERROR! the playbook: backup_cisco_router_playbook.yaml could not be found
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ^C
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts
ERROR! the playbook: backup_cisco_router_playbook.yaml could not be found
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ cd ..
devasc@labvm:~/labs/devnet-src/ansible$ cd ansible-csr1000v/
devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ls
ansible_backup_cisco_router-playbook.yml  ansible.cfg  hosts  servers
devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-backup-cisco-router-playbook.yml -i hosts
ansible-backup-cisco-router-playbook.yml: command not found
devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup-cisco-router-playbook.yml - hosts
ERROR! the playbook: - could not be found
devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ls
ansible.cfg  backup-cisco-router-playbook.yml  hosts  servers
devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup-cisco-router-playbook.yml -i hosts

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R0-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
fatal: [R0-15]: FAILED! => {"changed": false, "checksum": "033efe8f46186f27d5c38a8c6ae04a5a35bfb65f", "msg": "Destination directory backups does not exist"}

PLAY RECAP *******************************************************************************************************************
R0-15                      : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R0-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
fatal: [R0-15]: FAILED! => {"changed": false, "checksum": "033efe8f46186f27d5c38a8c6ae04a5a35bfb65f", "msg": "Destination directory backups does not exist"}

PLAY RECAP *******************************************************************************************************************
R0-15                      : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R0-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
fatal: [R0-15]: FAILED! => {"changed": false, "checksum": "033efe8f46186f27d5c38a8c6ae04a5a35bfb65f", "msg": "Destination directory backups does not exist"}

PLAY RECAP *******************************************************************************************************************
R0-15                      : ok=1    changed=0    unreachable=0    failed=1    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R0-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
changed: [R0-15]

PLAY RECAP *******************************************************************************************************************
R0-15                      : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ^C
devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R0-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
ok: [R0-15]

PLAY RECAP *******************************************************************************************************************
R0-15                      : ok=2    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ ansible-playbook backup_cisco_router_playbook.yaml -i hosts

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R0-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
ok: [R0-15]

PLAY [AUTOMATIC BACKUP OF RUNNING-CONFIG] ************************************************************************************

TASK [DISPLAYING THE RUNNING-CONFIG] *****************************************************************************************
ok: [R1-15]

TASK [SAVE OUTPUT TO ./backups/] *********************************************************************************************
changed: [R1-15]

PLAY RECAP *******************************************************************************************************************
R0-15                      : ok=2    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
R1-15                      : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-csr1000v$ cd ..
devasc@labvm:~/labs/devnet-src/ansible$ cd ansible-apache/
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ sudo systemctl start ssh
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ sudo apt-get install openssh-server
Reading package lists... Done
Building dependency tree       
Reading state information... Done
openssh-server is already the newest version (1:8.2p1-4).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ sudo apt-get install sshpass
Reading package lists... Done
Building dependency tree       
Reading state information... Done
sshpass is already the newest version (1.06-1).
0 upgraded, 0 newly installed, 0 to remove and 0 not upgraded.
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN group default qlen 1000
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host 
       valid_lft forever preferred_lft forever
2: enp0s3: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc fq_codel state UP group default qlen 1000
    link/ether 08:00:27:e9:3d:e6 brd ff:ff:ff:ff:ff:ff
    inet 10.0.2.15/24 brd 10.0.2.255 scope global dynamic enp0s3
       valid_lft 81717sec preferred_lft 81717sec
    inet6 fe80::a00:27ff:fee9:3de6/64 scope link 
       valid_lft forever preferred_lft forever
3: dummy0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc noqueue state UNKNOWN group default qlen 1000
    link/ether 7a:7a:6d:ea:3c:5c brd ff:ff:ff:ff:ff:ff
    inet 192.0.2.1/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.2/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.3/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.4/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet 192.0.2.5/32 scope global dummy0
       valid_lft forever preferred_lft forever
    inet6 fe80::787a:6dff:feea:3c5c/64 scope link 
       valid_lft forever preferred_lft forever
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m ping
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not
match 'all'
[WARNING]: Could not match supplied host pattern, ignoring: webservers
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ 
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m ping
[WARNING]: provided hosts list is empty, only localhost is available. Note that the implicit localhost does not
match 'all'
[WARNING]: Could not match supplied host pattern, ignoring: webservers
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m ping
192.0.2.3 | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ nsible webservers -m command -a "/bin/echo hello world"

Command 'nsible' not found, did you mean:

  command 'ansible' from deb ansible (2.9.6+dfsg-1)

Try: sudo apt install <deb name>

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible webservers -m command -a "/bin/echo hello world"
192.0.2.3 | CHANGED | rc=0 >>
hello world
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ pip

Command 'pip' not found, but there are 18 similar ones.

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ pip3 install pyyaml
Requirement already satisfied: pyyaml in /usr/lib/python3/dist-packages (5.3.1)
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook -v test_apache_playbook.yaml
Using /home/devasc/labs/devnet-src/ansible/ansible-apache/ansible.cfg as config file

PLAY [webservers] ***********************************************************************************************

TASK [Gathering Facts] ******************************************************************************************

ok: [192.0.2.3]

TASK [run echo command] *****************************************************************************************
changed: [192.0.2.3] => {"changed": true, "cmd": ["/bin/echo", "hello", "world"], "delta": "0:00:00.003661", "end": "2024-01-19 04:47:51.411853", "rc": 0, "start": "2024-01-19 04:47:51.408192", "stderr": "", "stderr_lines": [], "stdout": "hello world", "stdout_lines": ["hello world"]}

PLAY RECAP ******************************************************************************************************
192.0.2.3                  : ok=2    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ 
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ install_apache_playbook.yaml
install_apache_playbook.yaml: command not found
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook -v install_apache_playbook.yaml
Using /home/devasc/labs/devnet-src/ansible/ansible-apache/ansible.cfg as config file
ERROR! the playbook: install_apache_playbook.yaml could not be found
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook -v install_apache_playbook.yaml
Using /home/devasc/labs/devnet-src/ansible/ansible-apache/ansible.cfg as config file

PLAY [webservers] ***********************************************************************************************

TASK [Gathering Facts] ******************************************************************************************
ok: [192.0.2.3]

TASK [INSTALL APACHE2] ******************************************************************************************
changed: [192.0.2.3] => {"cache_update_time": 1705639933, "cache_updated": true, "changed": true, "stderr": "", "stderr_lines": [], "stdout": "Reading package lists...\nBuilding dependency tree...\nReading state information...\nThe following additional packages will be installed:\n  apache2-bin apache2-data apache2-utils libapr1 libaprutil1\n  libaprutil1-dbd-sqlite3 libaprutil1-ldap liblua5.2-0\nSuggested packages:\n  apache2-doc apache2-suexec-pristine | apache2-suexec-custom\nThe following NEW packages will be installed:\n  apache2 apache2-bin apache2-data apache2-utils libapr1 libaprutil1\n  libaprutil1-dbd-sqlite3 libaprutil1-ldap liblua5.2-0\n0 upgraded, 9 newly installed, 0 to remove and 633 not upgraded.\nNeed to get 1826 kB of archives.\nAfter this operation, 7973 kB of additional disk space will be used.\nGet:1 http://archive.ubuntu.com/ubuntu focal/main amd64 libapr1 amd64 1.6.5-1ubuntu1 [91.4 kB]\nGet:2 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libaprutil1 amd64 1.6.1-4ubuntu2.2 [85.1 kB]\nGet:3 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.1-4ubuntu2.2 [10.5 kB]\nGet:4 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libaprutil1-ldap amd64 1.6.1-4ubuntu2.2 [8752 B]\nGet:5 http://archive.ubuntu.com/ubuntu focal/main amd64 liblua5.2-0 amd64 5.2.4-1.1build3 [106 kB]\nGet:6 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2-bin amd64 2.4.41-4ubuntu3.15 [1186 kB]\nGet:7 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2-data all 2.4.41-4ubuntu3.15 [159 kB]\nGet:8 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2-utils amd64 2.4.41-4ubuntu3.15 [84.1 kB]\nGet:9 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2 amd64 2.4.41-4ubuntu3.15 [95.6 kB]\nFetched 1826 kB in 6s (291 kB/s)\nSelecting previously unselected package libapr1:amd64.\r\n(Reading database ... \r(Reading database ... 5%\r(Reading database ... 10%\r(Reading database ... 15%\r(Reading database ... 20%\r(Reading database ... 25%\r(Reading database ... 30%\r(Reading database ... 35%\r(Reading database ... 40%\r(Reading database ... 45%\r(Reading database ... 50%\r(Reading database ... 55%\r(Reading database ... 60%\r(Reading database ... 65%\r(Reading database ... 70%\r(Reading database ... 75%\r(Reading database ... 80%\r(Reading database ... 85%\r(Reading database ... 90%\r(Reading database ... 95%\r(Reading database ... 100%\r(Reading database ... 211981 files and directories currently installed.)\r\nPreparing to unpack .../0-libapr1_1.6.5-1ubuntu1_amd64.deb ...\r\nUnpacking libapr1:amd64 (1.6.5-1ubuntu1) ...\r\nSelecting previously unselected package libaprutil1:amd64.\r\nPreparing to unpack .../1-libaprutil1_1.6.1-4ubuntu2.2_amd64.deb ...\r\nUnpacking libaprutil1:amd64 (1.6.1-4ubuntu2.2) ...\r\nSelecting previously unselected package libaprutil1-dbd-sqlite3:amd64.\r\nPreparing to unpack .../2-libaprutil1-dbd-sqlite3_1.6.1-4ubuntu2.2_amd64.deb ...\r\nUnpacking libaprutil1-dbd-sqlite3:amd64 (1.6.1-4ubuntu2.2) ...\r\nSelecting previously unselected package libaprutil1-ldap:amd64.\r\nPreparing to unpack .../3-libaprutil1-ldap_1.6.1-4ubuntu2.2_amd64.deb ...\r\nUnpacking libaprutil1-ldap:amd64 (1.6.1-4ubuntu2.2) ...\r\nSelecting previously unselected package liblua5.2-0:amd64.\r\nPreparing to unpack .../4-liblua5.2-0_5.2.4-1.1build3_amd64.deb ...\r\nUnpacking liblua5.2-0:amd64 (5.2.4-1.1build3) ...\r\nSelecting previously unselected package apache2-bin.\r\nPreparing to unpack .../5-apache2-bin_2.4.41-4ubuntu3.15_amd64.deb ...\r\nUnpacking apache2-bin (2.4.41-4ubuntu3.15) ...\r\nSelecting previously unselected package apache2-data.\r\nPreparing to unpack .../6-apache2-data_2.4.41-4ubuntu3.15_all.deb ...\r\nUnpacking apache2-data (2.4.41-4ubuntu3.15) ...\r\nSelecting previously unselected package apache2-utils.\r\nPreparing to unpack .../7-apache2-utils_2.4.41-4ubuntu3.15_amd64.deb ...\r\nUnpacking apache2-utils (2.4.41-4ubuntu3.15) ...\r\nSelecting previously unselected package apache2.\r\nPreparing to unpack .../8-apache2_2.4.41-4ubuntu3.15_amd64.deb ...\r\nUnpacking apache2 (2.4.41-4ubuntu3.15) ...\r\nSetting up libapr1:amd64 (1.6.5-1ubuntu1) ...\r\nSetting up liblua5.2-0:amd64 (5.2.4-1.1build3) ...\r\nSetting up apache2-data (2.4.41-4ubuntu3.15) ...\r\nSetting up libaprutil1:amd64 (1.6.1-4ubuntu2.2) ...\r\nSetting up libaprutil1-ldap:amd64 (1.6.1-4ubuntu2.2) ...\r\nSetting up libaprutil1-dbd-sqlite3:amd64 (1.6.1-4ubuntu2.2) ...\r\nSetting up apache2-utils (2.4.41-4ubuntu3.15) ...\r\nSetting up apache2-bin (2.4.41-4ubuntu3.15) ...\r\nSetting up apache2 (2.4.41-4ubuntu3.15) ...\r\nEnabling module mpm_event.\r\nEnabling module authz_core.\r\nEnabling module authz_host.\r\nEnabling module authn_core.\r\nEnabling module auth_basic.\r\nEnabling module access_compat.\r\nEnabling module authn_file.\r\nEnabling module authz_user.\r\nEnabling module alias.\r\nEnabling module dir.\r\nEnabling module autoindex.\r\nEnabling module env.\r\nEnabling module mime.\r\nEnabling module negotiation.\r\nEnabling module setenvif.\r\nEnabling module filter.\r\nEnabling module deflate.\r\nEnabling module status.\r\nEnabling module reqtimeout.\r\nEnabling conf charset.\r\nEnabling conf localized-error-pages.\r\nEnabling conf other-vhosts-access-log.\r\nEnabling conf security.\r\nEnabling conf serve-cgi-bin.\r\nEnabling site 000-default.\r\nCreated symlink /etc/systemd/system/multi-user.target.wants/apache2.service -> /lib/systemd/system/apache2.service.\r\nCreated symlink /etc/systemd/system/multi-user.target.wants/apache-htcacheclean.service -> /lib/systemd/system/apache-htcacheclean.service.\r\nProcessing triggers for ufw (0.36-6) ...\r\nProcessing triggers for systemd (245.4-4ubuntu3.1) ...\r\nProcessing triggers for man-db (2.9.1-1) ...\r\nProcessing triggers for libc-bin (2.31-0ubuntu9) ...\r\n", "stdout_lines": ["Reading package lists...", "Building dependency tree...", "Reading state information...", "The following additional packages will be installed:", "  apache2-bin apache2-data apache2-utils libapr1 libaprutil1", "  libaprutil1-dbd-sqlite3 libaprutil1-ldap liblua5.2-0", "Suggested packages:", "  apache2-doc apache2-suexec-pristine | apache2-suexec-custom", "The following NEW packages will be installed:", "  apache2 apache2-bin apache2-data apache2-utils libapr1 libaprutil1", "  libaprutil1-dbd-sqlite3 libaprutil1-ldap liblua5.2-0", "0 upgraded, 9 newly installed, 0 to remove and 633 not upgraded.", "Need to get 1826 kB of archives.", "After this operation, 7973 kB of additional disk space will be used.", "Get:1 http://archive.ubuntu.com/ubuntu focal/main amd64 libapr1 amd64 1.6.5-1ubuntu1 [91.4 kB]", "Get:2 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libaprutil1 amd64 1.6.1-4ubuntu2.2 [85.1 kB]", "Get:3 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libaprutil1-dbd-sqlite3 amd64 1.6.1-4ubuntu2.2 [10.5 kB]", "Get:4 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libaprutil1-ldap amd64 1.6.1-4ubuntu2.2 [8752 B]", "Get:5 http://archive.ubuntu.com/ubuntu focal/main amd64 liblua5.2-0 amd64 5.2.4-1.1build3 [106 kB]", "Get:6 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2-bin amd64 2.4.41-4ubuntu3.15 [1186 kB]", "Get:7 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2-data all 2.4.41-4ubuntu3.15 [159 kB]", "Get:8 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2-utils amd64 2.4.41-4ubuntu3.15 [84.1 kB]", "Get:9 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 apache2 amd64 2.4.41-4ubuntu3.15 [95.6 kB]", "Fetched 1826 kB in 6s (291 kB/s)", "Selecting previously unselected package libapr1:amd64.", "(Reading database ... ", "(Reading database ... 5%", "(Reading database ... 10%", "(Reading database ... 15%", "(Reading database ... 20%", "(Reading database ... 25%", "(Reading database ... 30%", "(Reading database ... 35%", "(Reading database ... 40%", "(Reading database ... 45%", "(Reading database ... 50%", "(Reading database ... 55%", "(Reading database ... 60%", "(Reading database ... 65%", "(Reading database ... 70%", "(Reading database ... 75%", "(Reading database ... 80%", "(Reading database ... 85%", "(Reading database ... 90%", "(Reading database ... 95%", "(Reading database ... 100%", "(Reading database ... 211981 files and directories currently installed.)", "Preparing to unpack .../0-libapr1_1.6.5-1ubuntu1_amd64.deb ...", "Unpacking libapr1:amd64 (1.6.5-1ubuntu1) ...", "Selecting previously unselected package libaprutil1:amd64.", "Preparing to unpack .../1-libaprutil1_1.6.1-4ubuntu2.2_amd64.deb ...", "Unpacking libaprutil1:amd64 (1.6.1-4ubuntu2.2) ...", "Selecting previously unselected package libaprutil1-dbd-sqlite3:amd64.", "Preparing to unpack .../2-libaprutil1-dbd-sqlite3_1.6.1-4ubuntu2.2_amd64.deb ...", "Unpacking libaprutil1-dbd-sqlite3:amd64 (1.6.1-4ubuntu2.2) ...", "Selecting previously unselected package libaprutil1-ldap:amd64.", "Preparing to unpack .../3-libaprutil1-ldap_1.6.1-4ubuntu2.2_amd64.deb ...", "Unpacking libaprutil1-ldap:amd64 (1.6.1-4ubuntu2.2) ...", "Selecting previously unselected package liblua5.2-0:amd64.", "Preparing to unpack .../4-liblua5.2-0_5.2.4-1.1build3_amd64.deb ...", "Unpacking liblua5.2-0:amd64 (5.2.4-1.1build3) ...", "Selecting previously unselected package apache2-bin.", "Preparing to unpack .../5-apache2-bin_2.4.41-4ubuntu3.15_amd64.deb ...", "Unpacking apache2-bin (2.4.41-4ubuntu3.15) ...", "Selecting previously unselected package apache2-data.", "Preparing to unpack .../6-apache2-data_2.4.41-4ubuntu3.15_all.deb ...", "Unpacking apache2-data (2.4.41-4ubuntu3.15) ...", "Selecting previously unselected package apache2-utils.", "Preparing to unpack .../7-apache2-utils_2.4.41-4ubuntu3.15_amd64.deb ...", "Unpacking apache2-utils (2.4.41-4ubuntu3.15) ...", "Selecting previously unselected package apache2.", "Preparing to unpack .../8-apache2_2.4.41-4ubuntu3.15_amd64.deb ...", "Unpacking apache2 (2.4.41-4ubuntu3.15) ...", "Setting up libapr1:amd64 (1.6.5-1ubuntu1) ...", "Setting up liblua5.2-0:amd64 (5.2.4-1.1build3) ...", "Setting up apache2-data (2.4.41-4ubuntu3.15) ...", "Setting up libaprutil1:amd64 (1.6.1-4ubuntu2.2) ...", "Setting up libaprutil1-ldap:amd64 (1.6.1-4ubuntu2.2) ...", "Setting up libaprutil1-dbd-sqlite3:amd64 (1.6.1-4ubuntu2.2) ...", "Setting up apache2-utils (2.4.41-4ubuntu3.15) ...", "Setting up apache2-bin (2.4.41-4ubuntu3.15) ...", "Setting up apache2 (2.4.41-4ubuntu3.15) ...", "Enabling module mpm_event.", "Enabling module authz_core.", "Enabling module authz_host.", "Enabling module authn_core.", "Enabling module auth_basic.", "Enabling module access_compat.", "Enabling module authn_file.", "Enabling module authz_user.", "Enabling module alias.", "Enabling module dir.", "Enabling module autoindex.", "Enabling module env.", "Enabling module mime.", "Enabling module negotiation.", "Enabling module setenvif.", "Enabling module filter.", "Enabling module deflate.", "Enabling module status.", "Enabling module reqtimeout.", "Enabling conf charset.", "Enabling conf localized-error-pages.", "Enabling conf other-vhosts-access-log.", "Enabling conf security.", "Enabling conf serve-cgi-bin.", "Enabling site 000-default.", "Created symlink /etc/systemd/system/multi-user.target.wants/apache2.service -> /lib/systemd/system/apache2.service.", "Created symlink /etc/systemd/system/multi-user.target.wants/apache-htcacheclean.service -> /lib/systemd/system/apache-htcacheclean.service.", "Processing triggers for ufw (0.36-6) ...", "Processing triggers for systemd (245.4-4ubuntu3.1) ...", "Processing triggers for man-db (2.9.1-1) ...", "Processing triggers for libc-bin (2.31-0ubuntu9) ..."]}

TASK [ENABLED MOD_REWRITE] **************************************************************************************
changed: [192.0.2.3] => {"changed": true, "result": "Module rewrite enabled"}

RUNNING HANDLER [RESTART APACHE2] *******************************************************************************
changed: [192.0.2.3] => {"changed": true, "name": "apache2", "state": "started", "status": {"ActiveEnterTimestamp": "Fri 2024-01-19 04:52:46 UTC", "ActiveEnterTimestampMonotonic": "5896358087", "ActiveExitTimestampMonotonic": "0", "ActiveState": "active", "After": "-.mount remote-fs.target sysinit.target nss-lookup.target systemd-tmpfiles-setup.service network.target basic.target systemd-journald.socket system.slice", "AllowIsolate": "no", "AllowedCPUs": "", "AllowedMemoryNodes": "", "AmbientCapabilities": "", "AssertResult": "yes", "AssertTimestamp": "Fri 2024-01-19 04:52:46 UTC", "AssertTimestampMonotonic": "5896309378", "Before": "shutdown.target multi-user.target", "BlockIOAccounting": "no", "BlockIOWeight": "[not set]", "CPUAccounting": "no", "CPUAffinity": "", "CPUAffinityFromNUMA": "no", "CPUQuotaPerSecUSec": "infinity", "CPUQuotaPeriodUSec": "infinity", "CPUSchedulingPolicy": "0", "CPUSchedulingPriority": "0", "CPUSchedulingResetOnFork": "no", "CPUShares": "[not set]", "CPUUsageNSec": "[not set]", "CPUWeight": "[not set]", "CacheDirectoryMode": "0755", "CanIsolate": "no", "CanReload": "yes", "CanStart": "yes", "CanStop": "yes", "CapabilityBoundingSet": "cap_chown cap_dac_override cap_dac_read_search cap_fowner cap_fsetid cap_kill cap_setgid cap_setuid cap_setpcap cap_linux_immutable cap_net_bind_service cap_net_broadcast cap_net_admin cap_net_raw cap_ipc_lock cap_ipc_owner cap_sys_module cap_sys_rawio cap_sys_chroot cap_sys_ptrace cap_sys_pacct cap_sys_admin cap_sys_boot cap_sys_nice cap_sys_resource cap_sys_time cap_sys_tty_config cap_mknod cap_lease cap_audit_write cap_audit_control cap_setfcap cap_mac_override cap_mac_admin cap_syslog cap_wake_alarm cap_block_suspend cap_audit_read", "CleanResult": "success", "CollectMode": "inactive", "ConditionResult": "yes", "ConditionTimestamp": "Fri 2024-01-19 04:52:46 UTC", "ConditionTimestampMonotonic": "5896309378", "ConfigurationDirectoryMode": "0755", "Conflicts": "shutdown.target", "ControlGroup": "/system.slice/apache2.service", "ControlPID": "0", "DefaultDependencies": "yes", "DefaultMemoryLow": "0", "DefaultMemoryMin": "0", "Delegate": "no", "Description": "The Apache HTTP Server", "DevicePolicy": "auto", "Documentation": "https://httpd.apache.org/docs/2.4/", "DynamicUser": "no", "EffectiveCPUs": "", "EffectiveMemoryNodes": "", "Environment": "APACHE_STARTED_BY_SYSTEMD=true", "ExecMainCode": "0", "ExecMainExitTimestampMonotonic": "0", "ExecMainPID": "15608", "ExecMainStartTimestamp": "Fri 2024-01-19 04:52:46 UTC", "ExecMainStartTimestampMonotonic": "5896358073", "ExecMainStatus": "0", "ExecReload": "{ path=/usr/sbin/apachectl ; argv[]=/usr/sbin/apachectl graceful ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }", "ExecReloadEx": "{ path=/usr/sbin/apachectl ; argv[]=/usr/sbin/apachectl graceful ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }", "ExecStart": "{ path=/usr/sbin/apachectl ; argv[]=/usr/sbin/apachectl start ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }", "ExecStartEx": "{ path=/usr/sbin/apachectl ; argv[]=/usr/sbin/apachectl start ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }", "ExecStop": "{ path=/usr/sbin/apachectl ; argv[]=/usr/sbin/apachectl stop ; ignore_errors=no ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }", "ExecStopEx": "{ path=/usr/sbin/apachectl ; argv[]=/usr/sbin/apachectl stop ; flags= ; start_time=[n/a] ; stop_time=[n/a] ; pid=0 ; code=(null) ; status=0/0 }", "FailureAction": "none", "FileDescriptorStoreMax": "0", "FinalKillSignal": "9", "FragmentPath": "/lib/systemd/system/apache2.service", "GID": "[not set]", "GuessMainPID": "yes", "IOAccounting": "no", "IOReadBytes": "18446744073709551615", "IOReadOperations": "18446744073709551615", "IOSchedulingClass": "0", "IOSchedulingPriority": "0", "IOWeight": "[not set]", "IOWriteBytes": "18446744073709551615", "IOWriteOperations": "18446744073709551615", "IPAccounting": "no", "IPEgressBytes": "[no data]", "IPEgressPackets": "[no data]", "IPIngressBytes": "[no data]", "IPIngressPackets": "[no data]", "Id": "apache2.service", "IgnoreOnIsolate": "no", "IgnoreSIGPIPE": "yes", "InactiveEnterTimestampMonotonic": "0", "InactiveExitTimestamp": "Fri 2024-01-19 04:52:46 UTC", "InactiveExitTimestampMonotonic": "5896310675", "InvocationID": "3b0180ba5a024bbb92d1d14c6b6beaf5", "JobRunningTimeoutUSec": "infinity", "JobTimeoutAction": "none", "JobTimeoutUSec": "infinity", "KeyringMode": "private", "KillMode": "control-group", "KillSignal": "15", "LimitAS": "infinity", "LimitASSoft": "infinity", "LimitCORE": "infinity", "LimitCORESoft": "0", "LimitCPU": "infinity", "LimitCPUSoft": "infinity", "LimitDATA": "infinity", "LimitDATASoft": "infinity", "LimitFSIZE": "infinity", "LimitFSIZESoft": "infinity", "LimitLOCKS": "infinity", "LimitLOCKSSoft": "infinity", "LimitMEMLOCK": "65536", "LimitMEMLOCKSoft": "65536", "LimitMSGQUEUE": "819200", "LimitMSGQUEUESoft": "819200", "LimitNICE": "0", "LimitNICESoft": "0", "LimitNOFILE": "524288", "LimitNOFILESoft": "1024", "LimitNPROC": "15427", "LimitNPROCSoft": "15427", "LimitRSS": "infinity", "LimitRSSSoft": "infinity", "LimitRTPRIO": "0", "LimitRTPRIOSoft": "0", "LimitRTTIME": "infinity", "LimitRTTIMESoft": "infinity", "LimitSIGPENDING": "15427", "LimitSIGPENDINGSoft": "15427", "LimitSTACK": "infinity", "LimitSTACKSoft": "8388608", "LoadState": "loaded", "LockPersonality": "no", "LogLevelMax": "-1", "LogRateLimitBurst": "0", "LogRateLimitIntervalUSec": "0", "LogsDirectoryMode": "0755", "MainPID": "15608", "MemoryAccounting": "yes", "MemoryCurrent": "5701632", "MemoryDenyWriteExecute": "no", "MemoryHigh": "infinity", "MemoryLimit": "infinity", "MemoryLow": "0", "MemoryMax": "infinity", "MemoryMin": "0", "MemorySwapMax": "infinity", "MountAPIVFS": "no", "MountFlags": "", "NFileDescriptorStore": "0", "NRestarts": "0", "NUMAMask": "", "NUMAPolicy": "n/a", "Names": "apache2.service", "NeedDaemonReload": "no", "Nice": "0", "NoNewPrivileges": "no", "NonBlocking": "no", "NotifyAccess": "none", "OOMPolicy": "stop", "OOMScoreAdjust": "0", "OnFailureJobMode": "replace", "Perpetual": "no", "PrivateDevices": "no", "PrivateMounts": "no", "PrivateNetwork": "no", "PrivateTmp": "yes", "PrivateUsers": "no", "ProtectControlGroups": "no", "ProtectHome": "no", "ProtectHostname": "no", "ProtectKernelLogs": "no", "ProtectKernelModules": "no", "ProtectKernelTunables": "no", "ProtectSystem": "no", "RefuseManualStart": "no", "RefuseManualStop": "no", "ReloadResult": "success", "RemainAfterExit": "no", "RemoveIPC": "no", "Requires": "sysinit.target system.slice -.mount", "RequiresMountsFor": "/var/tmp /tmp", "Restart": "on-abort", "RestartKillSignal": "15", "RestartUSec": "100ms", "RestrictNamespaces": "no", "RestrictRealtime": "no", "RestrictSUIDSGID": "no", "Result": "success", "RootDirectoryStartOnly": "no", "RuntimeDirectoryMode": "0755", "RuntimeDirectoryPreserve": "no", "RuntimeMaxUSec": "infinity", "SameProcessGroup": "no", "SecureBits": "0", "SendSIGHUP": "no", "SendSIGKILL": "yes", "Slice": "system.slice", "StandardError": "inherit", "StandardInput": "null", "StandardInputData": "", "StandardOutput": "journal", "StartLimitAction": "none", "StartLimitBurst": "5", "StartLimitIntervalUSec": "10s", "StartupBlockIOWeight": "[not set]", "StartupCPUShares": "[not set]", "StartupCPUWeight": "[not set]", "StartupIOWeight": "[not set]", "StateChangeTimestamp": "Fri 2024-01-19 04:52:46 UTC", "StateChangeTimestampMonotonic": "5896358087", "StateDirectoryMode": "0755", "StatusErrno": "0", "StopWhenUnneeded": "no", "SubState": "running", "SuccessAction": "none", "SyslogFacility": "3", "SyslogLevel": "6", "SyslogLevelPrefix": "yes", "SyslogPriority": "30", "SystemCallErrorNumber": "0", "TTYReset": "no", "TTYVHangup": "no", "TTYVTDisallocate": "no", "TasksAccounting": "yes", "TasksCurrent": "55", "TasksMax": "4628", "TimeoutAbortUSec": "1min 30s", "TimeoutCleanUSec": "infinity", "TimeoutStartUSec": "1min 30s", "TimeoutStopUSec": "1min 30s", "TimerSlackNSec": "50000", "Transient": "no", "Type": "forking", "UID": "[not set]", "UMask": "0022", "UnitFilePreset": "enabled", "UnitFileState": "enabled", "UtmpMode": "init", "WantedBy": "multi-user.target", "WatchdogSignal": "6", "WatchdogTimestampMonotonic": "0", "WatchdogUSec": "0"}}

PLAY RECAP ******************************************************************************************************
192.0.2.3                  : ok=4    changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ sudo systemctl status apache2
● apache2.service - The Apache HTTP Server
     Loaded: loaded (/lib/systemd/system/apache2.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2024-01-19 04:52:59 UTC; 36s ago
       Docs: https://httpd.apache.org/docs/2.4/
    Process: 16352 ExecStart=/usr/sbin/apachectl start (code=exited, status=0/SUCCESS)
   Main PID: 16366 (apache2)
      Tasks: 55 (limit: 4628)
     Memory: 5.2M
     CGroup: /system.slice/apache2.service
             ├─16366 /usr/sbin/apache2 -k start
             ├─16379 /usr/sbin/apache2 -k start
             └─16380 /usr/sbin/apache2 -k start

Jan 19 04:52:59 labvm systemd[1]: Starting The Apache HTTP Server...
Jan 19 04:52:59 labvm systemd[1]: Started The Apache HTTP Server.
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ cat /etc/apache2/ports.conf
# If you just change the port or add more ports here, you will likely also
# have to change the VirtualHost statement in
# /etc/apache2/sites-enabled/000-default.conf

Listen 80

<IfModule ssl_module>
        Listen 443
</IfModule>

<IfModule mod_gnutls.c>
        Listen 443
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ 
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ cat /etc/apache2/sites-available/000-default.conf
<VirtualHost *:80>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        #ServerName www.example.com

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook install_apache_options_playbook.yaml
ERROR! We were unable to read either as JSON nor YAML, these are the errors we got from each:
JSON: Expecting value: line 1 column 1 (char 0)

Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/devasc/labs/devnet-src/ansible/ansible-apache/install_apache_options_playbook.yaml': line 8, column 20, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

- name: ENABLED MOD_REWRITE
     apache2_module: name=rewrite state=present
                   ^ here
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ls
ansible.cfg  install_apache_options_playbook.yaml  servers
hosts        install_apache_playbook.yaml          test_apache_playbook.yaml
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook install_apache_options_playbook.yaml
ERROR! We were unable to read either as JSON nor YAML, these are the errors we got from each:
JSON: Expecting value: line 1 column 1 (char 0)

Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/devasc/labs/devnet-src/ansible/ansible-apache/install_apache_options_playbook.yaml': line 8, column 20, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

- name: ENABLED MOD_REWRITE
     apache2_module: name=rewrite state=present
                   ^ here
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook install_apache_options_playbook.yaml 
ERROR! We were unable to read either as JSON nor YAML, these are the errors we got from each:
JSON: Expecting value: line 1 column 1 (char 0)

Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/devasc/labs/devnet-src/ansible/ansible-apache/install_apache_options_playbook.yaml': line 8, column 20, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

- name: ENABLED MOD_REWRITE
     apache2_module: name=rewrite state=present
                   ^ here
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook install_apache_options_playbook.yaml 
ERROR! We were unable to read either as JSON nor YAML, these are the errors we got from each:
JSON: Expecting value: line 1 column 1 (char 0)

Syntax Error while loading YAML.
  mapping values are not allowed in this context

The error appears to be in '/home/devasc/labs/devnet-src/ansible/ansible-apache/install_apache_options_playbook.yaml': line 8, column 20, but may
be elsewhere in the file depending on the exact syntax problem.

The offending line appears to be:

- name: ENABLED MOD_REWRITE
     apache2_module: name=rewrite state=present
                   ^ here
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ ansible-playbook install_apache_options_playbook.yaml 

PLAY [webservers] ***********************************************************************************************

TASK [Gathering Facts] ******************************************************************************************
ok: [192.0.2.3]

TASK [INSTALL APACHE2] ******************************************************************************************
ok: [192.0.2.3]

TASK [ENABLED MOD_REWRITE] **************************************************************************************
ok: [192.0.2.3]

TASK [APACHE2 LISTEN ON PORT 8081] ******************************************************************************
changed: [192.0.2.3]

TASK [APACHE2 VIRTUALHOST ON PORT 8081] *************************************************************************
changed: [192.0.2.3]

RUNNING HANDLER [RESTART APACHE2] *******************************************************************************
changed: [192.0.2.3]

PLAY RECAP ******************************************************************************************************
192.0.2.3                  : ok=6    changed=3    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ cat /etc/apache2/ports.conf
# If you just change the port or add more ports here, you will likely also
# have to change the VirtualHost statement in
# /etc/apache2/sites-enabled/000-default.conf

Listen 8081

<IfModule ssl_module>
        Listen 443
</IfModule>

<IfModule mod_gnutls.c>
        Listen 443
</IfModule>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ 
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ cat /etc/apache2/sites-available/000-default.conf
<VirtualHost *:8081>
        # The ServerName directive sets the request scheme, hostname and port that
        # the server uses to identify itself. This is used when creating
        # redirection URLs. In the context of virtual hosts, the ServerName
        # specifies what hostname must appear in the request's Host: header to
        # match this virtual host. For the default virtual host (this file) this
        # value is not decisive as it is used as a last resort host regardless.
        # However, you must set it for any further virtual host explicitly.
        #ServerName www.example.com

        ServerAdmin webmaster@localhost
        DocumentRoot /var/www/html

        # Available loglevels: trace8, ..., trace1, debug, info, notice, warn,
        # error, crit, alert, emerg.
        # It is also possible to configure the loglevel for particular
        # modules, e.g.
        #LogLevel info ssl:warn

        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined

        # For most configuration files from conf-available/, which are
        # enabled or disabled at a global level, it is possible to
        # include a line for only one particular virtual host. For example the
        # following line enables the CGI configuration for this host only
        # after it has been globally disabled with "a2disconf".
        #Include conf-available/serve-cgi-bin.conf
</VirtualHost>

# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
devasc@labvm:~/labs/devnet-src/ansible/ansible-apache$ 
