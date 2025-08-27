#!/usr/bin/env perl

use strict;
use warnings;

use feature qw/ signatures /;
use Data::Dumper;
use feature 'say';

sub test1 {
  # Arguments are passed into the array '_'

  my $name = $_[0];
  say "Hello, $name!";
};

test1( "Enrique" );

sub test2 {
  my $arg = shift @_;
  push $arg->@*, "testing";
}

my @array1 = qw/ one two three /;
test2 ( \@array1 );
say Dumper( @array1 );

sub test3 {
  my $num1 = 25;
  my $num2 = 35;

  return $num1 + $num2;
};

say test3();

sub test4( $name = "Jeff" ) {
  return "Hello, $name!";
};

say test4();

sub test5( $name, @inputs ) {
  say Dumper $name;
  say Dumper \@inputs;
}

test5( 'John', 1, 2, 3, 4, [5, 6, 7]);

1;