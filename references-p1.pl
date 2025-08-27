#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use feature 'say';

my @array1 = ( 25, 30, 35 );
my $scalar = 32;

# Printing by Dereferencing:
my $reference1 = \@array1;
say Dumper ( $reference1->@* );

# Pushing through Dereferencing:
push $reference1->@*, 40;
say Dumper ( $reference1->@* );

# Printing References:
my $reference2 = \$scalar;
my $reference3 = \$reference1;

say $reference1;
say $reference2;
say $reference3;

# Printing Array Reference:
say Dumper ( \@array1 );

# Creating Objects through References:
my $hash_ref = {
  location => "University of Michigan",
};

say Dumper ( $hash_ref, $hash_ref->{location} );

1;