#!/usr/bin/perl

my $output = `wine cmd internet.bat`;

$status = ($output > 0 )? "Connected" : "Disconnected";

printf("Internet Status: ", $status)


