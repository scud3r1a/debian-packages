## InstallStart

This is a very simple script that installs the most important normal-user applications and packages
for your Ubuntu (based) OS (desktop) or Debian (server).

#### Installation
```
echo && \
apt-get update --fix-missing && \
apt-get install --force-yes --yes ruby curl wget git && \
rm -rf InstallStart && \
git clone "https://github.com/githubato/InstallStart" && \
cd InstallStart && \
echo && \
echo "Done" && \
echo

ruby installstart.rb <base> <desktop> <server> <samba>
```
