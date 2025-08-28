#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use feature 'say';

# Regex Basics:
my $test = 'cat123   ';

if ( $test =~ m{cat(\d+)(\s)}i ) {
  say "matches! $1 ($2)";
} else {
  say "does not match!";
}

# Regex Modifiers:
my @list1 = qw/ dog rat cat /;

foreach my $item ( @list1 ) {
  $item =~ m/^(\w{2})/;
  say $1;
}

# Regex Replacements:
my @list2 = qw/ dog rat cat /;

foreach my $item ( @list2 ) {
  $item =~ s/\w{2}/REPLACED/;
  say $item;
}

# Capture Matchs:
my @list3 = qw/ dog rat cat /;

foreach my $item ( @list3 ) {
  my @captures = $item =~ m/(\w)(\w)/;
  say Dumper( \@captures );
}