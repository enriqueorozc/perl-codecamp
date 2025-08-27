#!/usr/bin/env perl

use strict;
use warnings;

my $test = 'world';

eval {
  #die 'Cannot go on';
  $test = 'bob';
};

warn "something isn't right";

print "Hello, $test: $@\n";

1;