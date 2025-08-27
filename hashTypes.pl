#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use feature 'say';

my %userInfo = (
  school => "University of Michigan",
  grade => "Senior",
  major => "Computer Engineering",
);

$userInfo{grade} = "Graduated";

print Dumper ( $userInfo{grade} );

# Mixing Hashes:
my @users = (\%userInfo);

my %schoolInfo = (
  location => "Ann Arbor, MI",
  students => \@users,
);

print Dumper ( %schoolInfo );

# Hash Methods:
my @array = keys %schoolInfo;
my $size = keys %schoolInfo;

say "School Info Keys: @array | Size: $size";

my $existBefore = exists $schoolInfo{location} ? 'yes' : 'no';
say "Does 'location' exist in schoolInfo before delete? $existBefore";

delete $schoolInfo{location};

my $existAfter = exists $schoolInfo{location} ? 'yes' : 'no';
say "Does 'location' exist in schoolInfo after delete? $existAfter";

1;