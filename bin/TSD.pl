#!/usr/bin/perl 

use strict;
use warnings;
use Sport::Rally::TSD;


my $rally = Sport::Rally::TSD->new;
my $method = shift;
$rally->$method(@ARGV);


