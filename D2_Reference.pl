#!/usr/bin/perl

use strict;
use warnings;

my $x =10;

my $xr =\$x;

# change $x via \$xr
$$xr = $$xr *2;

print "x    = $x    \n";
print "22xr = $$xr  \n";
print "2xr  = $xr  \n";