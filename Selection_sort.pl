#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

use  Data::Dumper qw(Dumper);

sub selection_sort{
	# Get disk name 
	my @list =@_;
	for my $i (0 .. $#list -1){
		my $min =$i;
		for my $j ($i .. $#list ){
			if ( @list[$j]<@list[$min]){
				$min=$j;
			
			}#End IF
			if ( $i != $min){
				@list[$i,$min]=@list[$min,$i];
			
			}#End IF2	
	
		}
	
	}

	return @list;

	}
	
	
my @unsorted =reverse (1 .. 10);
say Dumper \@unsorted;
my @sorted = selection_sort(@unsorted);

say Dumper \@sorted;
