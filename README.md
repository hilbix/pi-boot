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

