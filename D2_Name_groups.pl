#!/usr/bin/perl
use 5.010;
use strict;
use warnings;
use Data::Dumper qw(Dumper);

my $filename =shift || 'names_groups.txt';
my %group_of;
my %member_of;

open my $ft,'<',$filename or die;

while ( my $line = <$ft> ){
	chomp $line;
	my ($name,$group_str)=split /:/ ,$line;
	my @groups = split /,/, $group_str;
	$group_of{$name}=\@groups;
	
	for my $group (@groups ){
	   push @{$member_of{$group}},$name;
	}
}

print Dumper \%group_of;

print "-------------------------------------------------------------------- \n\n";

print Dumper \%member_of;

print "-------------------------------------------------------------------- \n\n";

my $sport ='Sport';

for my $Members (@{$member_of {$sport}}){

	say $Members ;

}