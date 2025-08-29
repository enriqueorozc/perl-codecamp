#!/usr/bin/env perl

use strict;
use warnings;

use feature qw/ say /;

# Difference between require vs use:
if ( 1 > 2 ) {
  require IDoNotExist;
}

#use Data::Dumper -> 'Data/Dumper.pm';
#@INC _BASE_ . 'DATA/Dumper.pm';

#use Data::Dumper qw/ doesnotexist /;

1;