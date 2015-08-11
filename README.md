#InstallStart
##The most important script for a new Ubuntu installation

This is a very simple script that installs the most important normal-user applications and packages
for your Ubuntu (based) OS.

```
clear && \
  echo && \

apt-get install -y git && \
  rm -f -r InstallStart && \
  
git clone "https://github.com/githubato/InstallStart" && \
  clear && \
    echo && \
    
sh InstallStart/InstallStart.sh && \
  sh InstallStart/V-Tools.sh && \
    sh InstallStart/Configuration.sh 
```

Only working with Ubuntu or Ubuntu-like distributions
Read "InstallStart.sh" and other scripts to learn more.

######ubuntu.com
