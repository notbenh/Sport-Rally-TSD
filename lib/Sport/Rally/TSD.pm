package Sport::Rally::TSD;
use Moose;
# ABSTRACT: a way to have the computer do most of the math for you

has route => is => 'rw'
           , isa => 'Sport::Rally::TSD::Route'
           , lazy => 1
           , default => sub{ require Sport::Rally::TSD::Route; 
                             Sport::Rally::TSD::Route->new;
                           }
;

sub parse {
  my $self = shift;
  $self->route->from_file(shift);
}



1;
