installation on debian:

sudo su

echo "deb [trusted=yes] http://hop.inria.fr/linux/Ubuntu focal hop" > /etc/apt/sources.list.d/hop.list

apt install -yq bigloo libgmp3-dev libpcre3 libpcre3-dev libunistring-dev

exit

usage:

/opt/hop/bin/bigloo day01part1.scm -o day01part1.out

./day01part1.out

other:

https://www-sop.inria.fr/indes/fp/Bigloo/index.html