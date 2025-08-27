#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use feature 'say';
use feature qw/ state /;

require './variableScope-2.pl';
our ( $script2_var );

say "$script2_var";

sub test {
  state $var = 1; # Defined Once
  $var += 1;
  say $var . "\n";
};

test();
test();
test();

sub test2 {
  state %map = (
    a => 1,
    b => 2,
    c => 3,
  );

  say $map{ $_[0] };
};

test2('a');

1;