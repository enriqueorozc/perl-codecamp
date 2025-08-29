#!/usr/bin/env perl

use strict;
use warnings;

BEGIN {
  push @INC, '/Users/enriqueorozc/Documents/Personal/perl-codecamp/oop';
};

use feature qw/ say /;
use Data::Dumper;
use Dog;

# Creating Class Instance
my $Dog = Dog->new( 'labrador', 50, 70, 'color', 'Fiddo' );
my $Dog2 = Dog->new( 'poodle', 50, 70, 'color', 'Bob' );

# Using Features:
say $Dog->breed;
say $Dog->height;

$Dog->set_height(120);
say $Dog->height;

say $Dog->get_height_and_weight;
say $Dog2->get_height_and_weight;

1;