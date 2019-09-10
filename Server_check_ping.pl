#!/usr/bin/perl
# Windows perl open cpan-> install Win32::DriveInfo
use 5.010;
use Net::Ping;
use IO::Socket;
use IO::Select;

# Print a message.
#print "Start sending Ping to";

my $p=Net::Ping->new();


@URLS = ("mcqpapers.com","perlmaven.com","facebook.com");   
foreach $temp (@URLS) {
   print $temp ," is ",Ping_IP($temp) ,"\n";
}



sub Ping_IP{
my $URL=$_[0];
if ($p->ping($URL)){
		return  "aLive";
}
	return "Not aLive";
}
