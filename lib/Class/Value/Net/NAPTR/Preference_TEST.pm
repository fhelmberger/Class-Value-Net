use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Preference_TEST;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::NAPTR::UInt16_TEST';

sub expected_malformed_exception {
    "Class::Value::Net::Exception::NAPTR::MalformedPreference";
}
1;

=method expected_malformed_exception

FIXME

