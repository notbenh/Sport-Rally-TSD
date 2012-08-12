#!/usr/bin/perl 

use strict;
use warnings;
use Test::Most qw{no_plan};

#-----------------------------------------------------------------
#  
#-----------------------------------------------------------------
BEGIN {

  use_ok('Sport::Rally::TSD');

}

#-----------------------------------------------------------------
#  
#-----------------------------------------------------------------
ok( my $obj  = Sport::Rally::TSD->new() );
isa_ok(  $obj, 
  'Sport::Rally::TSD', 
  q{[Sport::Rally::TSD] new()},
);




