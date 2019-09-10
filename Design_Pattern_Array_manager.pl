#!/usr/bin/perl
# Windows perl open cpan-> install Win32::DriveInfo
package MyArray;
#tie with array


sub TIEARRAY{
	print "Trying\n";
	bless[];
}
sub DISTROY{
	print "Distroying !!\n";
	bless[];
}

sub STORE{
	my ($self,$index,$value)=@_;
	print "Storing $value at index $index \n";
	$self[$index]=$value;
}
sub FETCH{
	my ($self,$index,$value)=@_;
	print "Fetching the value at index $index \n";
	return $self[$index];
}


package main;
$object = tie @x,MyArray;  # @x is now MyArray

print "object is a ",ref($object) ,"\n";

$x[0]='This is text';  # This will call STORE();

print $x[0],"\n";      # This will call STORE();

print $object->FETCH(0),"\n";   

#untie @x ;     # now @x is normal array again
