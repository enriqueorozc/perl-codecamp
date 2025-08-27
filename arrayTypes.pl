#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature 'say';

# Arrays:
my @array1 = ("May", 2025);
my @array2 = qw/ one two three /;

# Accessing Arrays:
my $size = @array1;
my $elem0 = $array1[0];

say "array1 Element 0: $elem0";
say "array1 Size: $size";

# Array Methods 1:
push @array2, 50;  # Array 2 = (one two three 50)
pop @array1;

print Dumper ( @array1, @array2 );

# Array Methods 2:
shift @array1;
unshift @array1, "May";  # Array 1 = ("May")

# Unsorted -> Sorted Array:
my @unsorted = ( 2, 1, 5, 9, 4, 3 );
my @sorted = sort {$a <=> $b} @unsorted;
say "Unsorted: @unsorted | Sorted: @sorted";

# Personal Exercise:
my @days = ( 0 .. 30 );
my @months = ( 0 .. 12 );

my $randDay = $days[rand(30)];
my $randMonth = $months[rand(12)];
say "You will graduate $randMonth/$randDay/25";

1;