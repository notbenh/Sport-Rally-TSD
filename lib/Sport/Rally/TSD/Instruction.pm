package Sport::Rally::TSD::Instruction;
use Moose;

has raw => is => 'ro'
         , isa => 'Str'
         , trigger => 'parse'
;

has aliases => is => 'rw'
             , isa => 'ArrayRef'
             , default => sub{[ @ => ' at '
                              , L => 'LEFT'
                              , R => 'RIGHT'
                              , ODO => 'ODOMETER'
                              , CAL => 'Calibration'
                              , SI  => 'Signal'
                              , OB  => 'OBSERVE'
                              , /CAST\s*(\d+)/ => sub{$self->CAST($1)}
                              ]}
;

=pod

CZT 10:00
0M Begin 30 minute ODO CAL TRN @ OC->L
.05M L@SIG
.15M R@SIG (224)
.87M OB "Mile 3"
1.2M (Bear) R@"LAKE RD."
1.39M L@STOP
1.69M R 1stOPP (224E)
3.48M R@"EXIT" (Toward Oregon City)
8.02M OB "Entering West Linn" (on bridge)
10.49M R@"EXIT 6"
10.77M L@SI
10.98M R@T
11.11M L@12th !!HTS
11.30M S@"EXCEPT RIGHT TURN"
11.358 CAL ODO @"BUMP"
CZT 10:30
0M R@STOP CAST15
.17M L@STOP (@Park Exit) CAST38
1.09M CAST28 @"SPEED 30"
1.4M CAST38 @"END SPEED ZONE"
2.13M OB"SW CAMBELL LN"
4.46M R@STOP (SW Mountain RD)
4.96M L@"ADVANCE RD"
6.05M OB"35TH DR" SOL
9.06M R@"95TH" CAST33
10.1M L@"RITTER RD"CAST38
10.97M L@STOP MBCU CAST42
CZT 11:04

=cut


1;


