# BIG FAT WARNING

THE CREATED IMAGE WILL DESTROY YOUR MICRO-SD-CARD!

The combination of systemd and syslog writes an such enourmous amount of data to the SD-card,
that, within days, the number of writes of the SD-Card are maxed out.

YOU HAVE BEEN WARNED!

# Experiment to create Raspberry PI 3 boot image

There is `rpi23-gen-image.sh` to create a boot image for Raspberry PI.
But I think it is far too complex to use from scratch.

Hence I created this environment.

# How to use

> This currently might be incomplete

- Create a VM with a minimal Debian install
- as `root`: `apt-get install etckeeper; apt-get install sudo`
- Extend `/home` to 20 GB (minimum)
- Create a user in the `sudo` group
- As this user do (this takes a hour or so):

        git clone --recursive https://github.com/hilbix/pi-boot.git
        pi-boot/.setup
        pi-boot/.x

