#!/usr/bin/perl

my $output = `internet.sh --option`;

if($output = 0){
print("Internet Status: Connected");
} 
else {
	print("Internet Status: Disconnected); 
}




