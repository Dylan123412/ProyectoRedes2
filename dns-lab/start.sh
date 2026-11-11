#!/bin/sh
ip addr add 192.168.20.2/24 dev eth1 2>/dev/null
ip link set eth1 up
ip route add 192.168.10.0/24 via 192.168.20.1 dev eth1 2>/dev/null
ip route add 192.168.30.0/24 via 192.168.20.1 dev eth1 2>/dev/null
ip route add 192.168.40.0/24 via 192.168.20.1 dev eth 2>/dev/null
exec /sbin/tini -- /usr/bin/dnsmasq.sh
