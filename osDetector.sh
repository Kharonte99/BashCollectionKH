#!/bin/bash


host=$1


echo "---DEFAULT TTL TABLE---"

echo "128 ->  Windows"
echo " 64 ->  Unix/Linux"
echo "254 ->  Solaris/AIX"
echo " 64 ->  MacOS"

echo "---**************** ---"

ping -c 1 $host >result.log

for i in $(seq 60 70); do
	if test $(grep ttl=$i result.log -c) = 1; then
		echo "This Host-->Linux"
	fi
done

for i in $(seq 100 150); do
        if test $(grep ttl=$i result.log -c) = 1; then
                echo "This Host-->Windows"
	fi
done

for i in $(seq 230 254); do
        if test $(grep ttl=$i result.log -c) = 1; then
                echo "This Host-->Solaris(But it's maybe Windows)"
        fi
done

rm result.log
