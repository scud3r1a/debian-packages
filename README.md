## InstallStart

This is a very simple script that installs the most important normal-user applications and packages
for your Ubuntu (based) OS (desktop) or Debian (server).

#### Desktop (Ubuntu)
```
echo && \
apt-get install --yes curl wget git && \
rm -rf InstallStart && \
git clone "https://github.com/githubato/InstallStart" && \
sh InstallStart/desktop-main.sh && \
rm -rf InstallStart
```

#### Server (Debian)
```
echo && \
apt-get install --yes curl wget git && \
rm -rf InstallStart && \
git clone "https://github.com/githubato/InstallStart" && \
sh InstallStart/server-main.sh && \
sh InstallStart/server-configuration.sh && \
rm -rf InstallStart
```
