# vyos-config

My VyOS config.

Thanks to bjw-s for the framework for setting up VyOS in a iac/gitops fashion!
https://github.com/bjw-s/vyos-config

# Setup

Will need to install vyos-rolling - easiest if its modified with git (like onedr0ps image)

To install from live image, `install image` and follow prompts.

Get basic network running in installed image

```
confiure

set networks ethernet eth1 dhcp

set system name-server 1.1.1.1
```

```
cd /config
git init
git remote add origin git@github.com:<repo>.git
git branch --set-upstream-to=origin/main main # not 100% certain this is required
git checkout main -f
git log
```
