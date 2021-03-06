use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::KeyTag_TEST;

use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args    => {},
        invalid => [ qw/-1 string 47a1 I337 133L 65536/ ],
        valid   => [ qw/0 1 255 1024 1337 51220 65535/ ],
    },
);

1;
