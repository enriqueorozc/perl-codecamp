#!/usr/bin/env perl

use strict;
use warnings;
use feature qw/ say /;

use Data::Dumper;
use JSON::XS;
use ExtUtils::Installed;

say Dumper(
  encode_json({
    a => 1,
    b => 2,
  })
);

say Dumper(
  decode_json('[ "a" ]')
);

say Dumper(
  ExtUtils::Installed->new->modules
);

1;