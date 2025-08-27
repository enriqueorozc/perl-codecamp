#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use feature 'say';

# Nested References:
my $hashRef = {
  location => "Ann Arbor, MI",
  school => "University of Michigan",
  students => [
    {
      name => "Enrique Orozco Jr.",
      major => "Computer Engineering",
    },
    {
      name => "Luis Orozco",
      major => "Business",
    },
  ],
};

say Dumper ( $hashRef->{students}->[0]->{major} );
say Dumper ( ref( {} ) );  # Using ref()

delete $hashRef->{students};

say Dumper ( keys $hashRef->%* );

1;