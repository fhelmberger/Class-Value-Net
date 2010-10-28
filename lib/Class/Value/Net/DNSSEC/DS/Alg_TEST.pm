use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::Alg_TEST;

use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args    => {},
        invalid => [ qw/-1 0 1 2 4 9 11 255 string/, 13 .. 251 ],
        valid   => [ qw/3 5 6 7 8 10 12 253 254/ ],
    },
);

1;
