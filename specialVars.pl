#!/usr/bin/env perl

use strict;
use warnings;

use feature qw/ say /;
use Data::Dumper;

# Argv:
say Dumper( \@ARGV );

# Process ID:
say Dumper( $$ );

# Perl Version:
say Dumper ( $] );

# Include Array:
say Dumper ( @INC );

# Environment Variables:
say Dumper ( \%ENV );

# Standard Input:
#while (<STDIN>) { say $_ }

# Script File + Line:
say __FILE__;
say __LINE__;

1;