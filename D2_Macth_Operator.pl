#!/usr/bin/perl
use 5.010;

$bar = "This is foo and again foo";

if ($bar ~~ /foo/){

print "First time is matching\n";

}else {
print "First time is not matching\n";
}

$bar = "foo";

if ($bar ~~ /foo/){
print "Second time is matching\n";
}else {
print "Second time is not matching\n";
}

