use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::DigestType_TEST;

use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args    => {},
        invalid => [ qw/-1 0 string/, 4 .. 255 ],
        valid   => [ qw/1 2 3/ ],
    },
);

1;
