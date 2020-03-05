#!/usr/bin/perl

my $output = `internet.bat`;

$status = ($output > 0 )? "Connected" : "Disconnected";

printf("Internet Status: ", $status)


