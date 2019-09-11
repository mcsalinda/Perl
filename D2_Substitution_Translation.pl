#!/usr/bin/perl

$string = "the Cat sat on the mat";

$string =~s/Cat/dog/;

print "$string \n";


$string = "the Cat sat on the mat";

$string =~ tr/a/o/;

print "$string \n";