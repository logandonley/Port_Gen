#!/usr/bin/perl

my $connect = `./internet.sh`;
print("Internet Status: ", $connect);

my $ip = `./my_ip.sh`;
print($ip);






