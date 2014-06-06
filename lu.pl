#!/usr/bin/env perl

#must be run as root

use warnings;
use strict;

open(INPUT,"hosts");
open(OUTPUT,">mac.out");

while(defined(my $ip=<INPUT>)){
	chomp($ip);
	my $nmap_output = `nmap -sP $ip`;
	if($nmap_output=~/Host is up/){

		print "$ip is alive\n";

		my $get_mac = `nmap -O $ip`;
		$get_mac=~/MAC Address: (\w\w:\w\w:\w\w:\w\w:\w\w:\w\w)/;
		my $mac_address=$1;
		
		if(defined($mac_address)){
			print "$ip has MAC: $mac_address\n";
			print OUTPUT "$ip,$mac_address\n";
		}else{
			print "$ip has MAC: cant find MAC in $get_mac\n";
		}
		undef($mac_address);

	}else{
		print "$ip seems down\n";
	}
}
