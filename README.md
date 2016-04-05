# InstallStart
### The most important script for a new Ubuntu installation

This is a very simple script that installs the most important normal-user applications and packages
for your Ubuntu (based) OS.

```
echo && \
apt-get install --yes curl wget git && \
rm -rf InstallStart && \
git clone "https://github.com/githubato/InstallStart" && \
sh InstallStart/InstallStart.sh && \
sh InstallStart/Configuration.sh
```
