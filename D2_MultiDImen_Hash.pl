#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

my %grades;

$grades{"Foo Bar"}{"Mathematics"}=97;
$grades{"Foo Bar"}{"Lt"}=91;
$grades{"Foo Bar"}{"ENG"}=93;
$grades{"Koo Bar"}{"Mathematics"}=99;
$grades{"Koo Bar"}{"SCience"}=95;
$grades{"Koo Bar"}{"MMM"}=96;

print Dumper  \%grades;
print "............\n";


foreach  my $name (sort keys %grades){
	
	foreach  my $subject (  keys %{$grades{$name }}){
		print  "$name. $subject: $grades{$name }{$subject}\n";
	}
}

