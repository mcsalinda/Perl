#!/usr/bin/perl  : incomplete

$string = "the Cat sat on the mat";

($start)=($string =~ /\A(.*?)/);

@lines =$string =~/^(.*?)/gm);


print "First word $string \n"," start: $start";



