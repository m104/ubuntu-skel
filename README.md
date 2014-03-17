# M104's Ubuntu /etc/skel Repository

Assumptions:
- Ubuntu
- umask 007
- each user has their own dedicated group

Things included:
- bash profile, configs, aliases
- vim config
- git config with ignore patterns
- psql config
- screen config
- htop config

## Full /etc/skel Installation
It's best to do this before any regular users are created.

``` bash
# skel import
mv /etc/skel /etc/skel.dist
git clone https://github.com/m104/ubuntu-skel.git /etc/skel
rm -rf /etc/skel/{.git,README.md}

# umask 007 setup
chmod -R o-rwx /etc/skel
chmod -R g+rwX /etc/skel
chmod -R g-rwx /etc/skel/.ssh
chmod -R g-rwx /etc/skel/.config

# default SSH keys setup (optional)
cat > /etc/skel/.ssh/authorized_keys
```

## root User Usage
Generally speaking, the skel files here are sufficient, secure, and appropriate
for the root user. To update root's config files from this repository (assuming
the config files are already in /etc/skel):

``` bash
cd ~
cp -v /etc/skel/.* .
cp -av /etc/skel/.config .
sed -i -e 's/32m/31m/' .bashrc
```

