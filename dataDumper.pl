#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

my $var1 = "testing";
my $var2 = 25.25;

print Dumper( $var1, $var2 );

1;