#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use feature 'say';

my $testCond = 1;

# While Loop Syntax:
while ( $testCond < 10 ) {
  say "Hello, World: $testCond";
  $testCond++;
}

# For Loop Syntax:
for ( my $testCond = 0; $testCond < 10; $testCond++ ) {
  say "Sup, World: $testCond";
}

# Foreach Loop Syntax:
my @list = ( 1.. 10 );
my @nested = ( 1, 2 );

LOOP1:
foreach my $item ( @list ) {

  goto LOOP2 if $item == 1;

  $item += 1;
  say "Hello: $item";

  
  next if $item == 2;
  last if $item == 9;

  LOOP2:
  foreach my $nest_item ( @nested ) {
    say "\tnested: $nest_item";
  }
}

say Dumper ( \@list );

1;