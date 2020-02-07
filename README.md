# BIG FAT WARNING

I AM VERY SORRY TO TELL YOU, THAT THE CREATED IMAGE WILL DESTROY YOUR MICRO-SD-CARD VERY FAST!

The combination of systemd and syslog writes an such enourmous amount of data to the SD-card,
that, within days, the possible number of writes to the SD-Card are reached.
THIS EFFECTIVELY DESTROYS YOUR SD-CARD!

Good SD-Cards stay readonly after that point, so you can recover your last data.
But normal SD-Cards (like most of the expensive premium cards which are advertised as "extraordinary durable")
just die at that point compleely and all your data will be gone forever with no chance for recovery, ever.

YOU HAVE BEEN WARNED!  (YMMV, if you are lucky)

> Note that there are now SD cards which work like an SSD with wear levelling and a high write count.
> These cards probably can sustain the load of this image.

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

