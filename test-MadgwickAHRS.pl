#!/usr/bin/env perl
use strict;

use lib qw(.);
use MadgwickAHRS;
MadgwickAHRS::init_q();

warn join("\t", $MadgwickAHRS::q0, $MadgwickAHRS::q1, $MadgwickAHRS::q2, $MadgwickAHRS::q3);

foreach(1..10){
    MadgwickAHRS::MadgwickAHRSupdate(0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    warn join("\t", $MadgwickAHRS::q0, $MadgwickAHRS::q1, $MadgwickAHRS::q2, $MadgwickAHRS::q3);
}

exit 0;