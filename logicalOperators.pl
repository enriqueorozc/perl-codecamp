#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use feature 'say';

# Numerical Operators:
say ("Is 4 >= 0 ? " . ((4 >= 0) ? 'yes' : 'no'));
say 1 == 0 ? 'yes' : 'no';
say 20 <=> 1;   # Spaceship Operator

# String Operators:
say 'a' ne 'b' ? 'yes' : 'no';
say 'b' le 'c' ? 'yes' : 'no';

# Logical Operators:
say 4 && 4 ? 'yes' : 'no';
say 0 && 3 ? 'yes' : 'no';

# Chaining:
say 1 > 0 && 2 > 1 ? 'yes' : 'no';
say 1 > 0 || 2 > 3 ? 'yes' : 'no';

# Logical Operators on Arithmetic:
my $num = 20;
$num += (0 > 0) ? 25 : 50;
say $num;

# Repetition Operator:
my $str = 'h' x 6;
say $str;

1;