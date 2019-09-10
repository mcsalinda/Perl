#!/usr/bin/perl
# Windows perl open cpan-> install Win32::DriveInfo

use strict;
use warnings;
use Win32::OLE;

# Print a message.
print "Hello, World!\n";


sub get_available_space{
	# Get disk name 
	my $my_disk =$_[0];
	
	#Create file system object using Win32::OLE;
	my $file_system = Win32::OLE-> CreateObject('Scripting.FileSystemObject');
	
	print "AAAA\n";
	#get File usage from system object 
	my $disk = $file_system->GetDrive($my_disk);
	print "BBBB\n";

	
	
	# total size of disk
	print 	convert_to_gb($disk->{TotalSize})," total \n";

	# Free size of disk
	print 	convert_to_gb($disk->{FreeSpace})," Free \n";
	}
	
	
	
sub convert_to_gb{
	# Get disk name 
	my $byte_size =$_[0];
	
	my $gb_size = $byte_size/1073741824;
	
	return $gb_size;

}

get_available_space("c:");