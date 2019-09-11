#!/usr/bin/perl
use 5.010;
use strict;
use warnings;
use Data::Dumper qw(Dumper);

my $filename =shift || 'name_score.txt';
my %scores_of;

open my $ft,'<',$filename or die;

while ( my $line = <$ft> ){
	chomp $line;
	my ($name,$score_str)=split /:/ ,$line;
	my @scores = split /,/, $score_str;
	$scores_of {$name} = \@scores;
}

print Dumper \%scores_of;

print "-------------------------------------------------------------------- \n\n";

my $name ='Mary';

for my $score (@{$scores_of {$name}}){

	say $score ;

}