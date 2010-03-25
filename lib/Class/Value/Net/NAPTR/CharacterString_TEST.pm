use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::CharacterString_TEST;

# ABSTRACT: Network-related value objects
use Test::More;
use parent 'Class::Value::Test';
use constant TESTDATA => (
    {   args    => {},
        invalid => [ sprintf("%c%c%c", 0x00, 0xff, 0x21), ],
    },
);
1;
