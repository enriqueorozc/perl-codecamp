#!/usr/bin/env perl

use strict;
use warnings;

use feature qw/ say /;
use Data::Dumper;

# Grep / Map
my @list = qw/ cat dog /;
my @new_list = grep {
  $_ eq 'cat' || $_ eq 'dog';
} @list;

say Dumper( \@new_list );

# Splitting
my @parts = split m/e/, 'test_test';

say Dumper( \@parts );

# Join
my @parts1 = qw/ a b c d e /;
my $full_string = join '_', @parts1;

say Dumper( $full_string );

# Length
my $test1 = 'cat';
my $size = length $test1;

say Dumper( $size );

# Sleep
sleep 2;
say "Hello, World!";

# Substr:
my $test2 = substr( $test1, 0, 2 );
say Dumper( $test2 );

1;