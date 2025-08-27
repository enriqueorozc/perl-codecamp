#!/usr/bin/env perl

use strict;
use warnings;
use feature 'say';

# Numbers:
my $number1 = 5.5;
my $number2 = 10;

my $add = $number1 + $number2;
my $sub = $number1 - $number2;
my $mul = $number1 * $number2;
my $div = $number1 / $number2;

say "Addition: $number1 + $number2 = $add"; 
say "Subtraction: $number1 - $number2 = $sub"; 
say "Multiplication: $number1 * $number2 = $mul"; 
say "Division: $number1 / $number2 = $div"; 

# Strings:
my $string1 = "Hello 1";
my $string2 = "$string1, Hello 2";

say $string2;
say $string2 . ", " . $string1;

1;