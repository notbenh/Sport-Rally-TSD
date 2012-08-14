package Sport::Rally::TSD::Route;
use Moose;
use File::Slurp;
#use MooseX::AttributeHelpers;
use v5.14;

has instructions => is => 'rw'
#, metaclass => 'Collection::Array'
                  , isa => 'ArrayRef'
                  , lazy => 1
                  , default => sub{[]}
;


sub from_file {
  require Sport::Rally::TSD::Instruction;
  my $self = shift;
  my @lines = read_file(shift, chomp=>1);
  state $CAST = 0;
  foreach my $route_instruction (@lines) {
    next unless length($route_instruction);
    my $instruction = Sport::Rally::TSD::Instruction->new(CAST => $CAST, raw => $route_instruction);
    push @{ $self->instructions }, $instruction;
    $CAST = $instruction->CAST;
  }

  use Data::Dumper;
  warn Dumper($self->instructions);

}


1;


