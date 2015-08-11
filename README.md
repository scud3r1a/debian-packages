#InstallStart
##The most important script for a new Ubuntu installation

This is a very simple script that installs the most important normal-user applications and packages
for your Ubuntu (based) OS.

```
apt-get install -y git && \
  rm -f -r Installstart && \
  
git clone "https://github.com/githubato/InstallStart" && \

sh InstallStart/InstallStart.sh && \
  sh InstallStart/V-Tools.sh && \
    sh InstallStart/Configuration.sh 
```

Only working with Ubuntu or Debian-like distributions
Read "InstallStart.sh" and "Configuration.sh" to learn more.

######ubuntu.com
