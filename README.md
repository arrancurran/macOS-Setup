# Setup for a fresh install of macOS

```bash
git clone https://github.com/arrancurran/macOS-Setup.git
```

Clones this repo onto your system. Normally `setup.sh` will clone with executable rights but if not,

```bash
cd macOS-Setup
chmod 755 setup.sh
```

Confirm permissions with,

```bash
ls -l | awk '{k=0;for(i=0;i<=8;i++)k+=((substr($1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf("%0o ",k);print}'
```

And run with,

```bash
./setup.sh
```