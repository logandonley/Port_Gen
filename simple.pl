#!/usr/bin/perl

my $output = `internet.sh` --option;

#$status = ($output > 0 )? "Connected" : "Disconnected";

printf("Internet Status: ", $output)


