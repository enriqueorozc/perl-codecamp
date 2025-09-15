#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;

use Try::Tiny::SmartCatch;
use Exception::Class (
  'MyException',
  'App::Filesystem::Full'
);

# Captures Error:
eval {
  die "this is it";
};

say "hello: $@";

try sub {
  if ( rand(5) > 2 ) {
    App::Filesystem::Full->throw( error => 'oh no, disk is full!' )
  } else {
    MyException->throw( error => 'something is not right' ) 
  }
}, 
catch_when 'MyException' => sub {
  say 'I know this exception';
},
catch_when 'App::Filesystem::Full' => sub {
  say "Disk is full";
},
catch_default sub {
  say "$_";
};

1;