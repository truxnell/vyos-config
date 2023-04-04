# vyos-config

My VyOS config.

Thanks to bjw-s for the framework for setting up VyOS in a iac/gitops fashion!
https://github.com/bjw-s/vyos-config

# Setup

Will need to install vyos-rolling - easiest if its modified with git (like onedr0ps image)

To install from live image, `install image` and follow prompts.

Get basic network running in installed image

## Vyos

```
confiure

set networks ethernet eth1 dhcp

set system name-server 1.1.1.1
```

```
cd /config
mkdir secrets
```

## Local

```
scp ~/.config/sops/age/keys.txt vyos@<VYOS-IP>:/config/secrets/age.key
```

## Vyos

```
git init
git remote add origin git@github.com:<repo>.git
git branch --set-upstream-to=origin/main main # not 100% certain this is required
git checkout main -f
git log
```

scp age key to folder

```bash
scp ~/.config/sops/age/keys.txt vyos@<ip>:/config/secrets/age.txt
```

# Wireguard

First create servers wg keypair

```
generate pki wireguard key-pair install <interface>
```

from the output, put the public key in the sops file (to gitops the vyos interface private key) and note the public key for your remote device

generate a keypair for your remote device

```
generate pki wireguard key-pair
```

Note them for remote device. Add the private key into the wg01 in interfaces.sh
