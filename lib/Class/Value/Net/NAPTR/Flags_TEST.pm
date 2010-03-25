use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Flags_TEST;

# ABSTRACT: Network-related value objects
use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args  => {},
        valid => [
            qw(
              x
              )
        ],
        invalid => [
            qw(
              xx
              )
        ],
    },
);
1;
