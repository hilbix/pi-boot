> **THIS CURRENTLY DOES NOT WORK FOR UNKNOWN REASON** (the created image does not boot)

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

Also it is a security nightmare, as it downloads unauthenticated binary blobs from unauthenticated sources over insecure Internet.
A complete no-go.  Everything must be authenticated.

> Note that the Debian download is authenticated by Debian signatures.

Hence I created this environment to fix the bugs.

> Yes, this still needs networking to download the Debian install.
> But it wraps every unauthenticated binary download into some git submodule of the unauthenticated source.
> git is used to track the contents, hence the content is not neccesarily authentic, but nevertheless approved.


# How to use

> This currently is not complete

- Create a VM with a minimal Debian install
- as `root`: `apt-get install etckeeper; apt-get install sudo`
- Have a good web cache reachable on 127.0.0.1:3142 within the VM
- Extend `/home` to 20 GB (minimum)
- Create a user in the `sudo` group
- As this user, do (this takes a hour or so):

        git clone --recursive https://github.com/hilbix/pi-boot.git
        pi-boot/.setup
        pi-boot/.x

- Afterwards you have the image in `image/YYYY-MM-DD-arm-CURRENT-rpi*-*-armhf.img`
- Write this image to your Micro-SD-card
  - `dd if=image/YYYY-MM-DD-arm-CURRENT-rpi*.img of=/dev/sdX`
  - **BE VERY CARFUL TO REALLY USE THE RIGHT /dev/sdX, because if you use the wrong one you destroy something unconditionally forever!**
- `sync`
- Pull the card and put it into the PI
- Power on the PI

That's it

# Missing links

- Get it booting
  - Long ago it once booted, but no more ..

- This is far too complex
  - Creating a VM is too complex
  - Setting up the VM is too complex
  - Configuring everything is too complex
  - Writing the image to the card is too complex

- Aftermath is too complex, too
  - The PI is booted
  - You need to connect to it somehow
  - You need to configure it .. again like the VM
  - There is no way to save the state (backup is missing)

- Also you cannot easily reproduce things bit-by-bit.  
  - This means: Tomorrow, in a year, in 10 years from now, or even in 100 years.
  - This also means:  Without something wich might no more available then, like GitHub, Debian archive, etc.
)
