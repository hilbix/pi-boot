#

.PHONY:	love
love:	all

.PHONY:	all
all:
	./.x

.PHONY:	debian
debian:
	./.setup -y

