#!/usr/bin/bash
git clone https://github.com/Wipupat-Chomthaworn/NPA-lab.git
git branch speed-test
git checkout speed-test
speedtest-cli --list > servers.txt
cat servers.txt
# Retrieving speedtest.net configuration...
# 20220) DTAC (Pathum Wan, Thailand) [27.22 km]
# 27203) ByteArk Co., Ltd. (Bangrak, Thailand) [27.28 km]
# 56644) Thailand Internet Exchange Point (Bangkok, Thailand) [30.46 km]
# 17560) TrueMove H (Bangkok, Thailand) [32.34 km]
# 23295) 3BB (Pathum Thani, Thailand) [43.82 km]
# 37242) SCM Technologies (Chonburi, Thailand) [45.10 km]
# 29053) 3BB (Samut Sakhon, Thailand) [57.71 km]
# 37240) SCM Technologies (Ayutthaya, Thailand) [75.70 km]
# 47818) MimoTech (Nakhon Pathom, Thailand) [81.02 km]
# 48164) AWN (Nakhon Pathom, Thailand) [81.02 km]

# to log all aviable bash shell
cat /etc/shells 
# /etc/shells: valid login shells
# output avable bash
# /bin/sh
# /bin/bash
# /usr/bin/bash
# /bin/rbash
# /usr/bin/rbash
# /bin/dash
# /usr/bin/dash

# to run bash shell script
bash speedtest-lab.sh


git add .
git commit -m "speed-test"
git push --set-upstream origin speed-test

git push
