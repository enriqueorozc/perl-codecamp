#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

if ( rand(2) > 1 ) {
  say "Hello, world!";

  my $var = 1;
  say "my var: $var";
} else {
  say "Sup, world!";

  my $var = 2;
  say "my var: $var";
}

my $test = 1;
$test = 2 unless 3 > 2;

say "test_var: $test";

1;