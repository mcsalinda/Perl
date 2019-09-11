#!/usr/bin/perl


print "Making a Stack.\n";

@stack = qw (awk bash chmod);

print "Initial Stack\n";
push (@stack , "diff");

print "Push Item on stack:\n  @stack \n";
$item ="Emacs";
push (@stack , $item);
print "Push Item on stack:\n @stack \n";
$top = pop @stack;
print "Popping top of stack: @top \n";
print "Final Stack stack:\n @stack \n";
print "---------------------------------------------------\n";


# Method 2
print "Making a Stack using pointers\n";

@links = qw (2 Null 1);

@nodes =qw (finger:Null whois:Null who:Null);

for ($i=0;$i <= $#nodes; $i++){

	$ptr =\$nodes[$i];
	@data = split (/:/,$$ptr);
	print "Before : $ptr @data"; 
	$data[1]=$links[$i];
	print "-> @data\n"; 	
	$$ptr =join ':',@data;
	
	}

print "nodes :\n @nodes \n";
print "Method 2 : END \n\n";