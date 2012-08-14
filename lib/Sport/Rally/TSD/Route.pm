package Sport::Rally::TSD::Route;
use Moose;
use File::Slurp;

has instructions => is => 'rw'
                  , isa => 'ArrayRef[Sport::Rally::TSD::Instruction]'
                  , lazy => 1
                  , default => sub{ require Sport::Rally::TSD::Instruction;
                                    [Sport::Rally::TSD::Instruction->new]
                                  }
;

                 

sub from_file {
  my $self = shift;
  my @lines = read_file(shift, chomp=>1);
  use Data::Dumper;
  warn Dumper(\@lines);
}


1;


