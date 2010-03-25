use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::UInt16;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net';

sub is_well_formed_value {
    my ($self, $value) = @_;
    return unless defined $value;
    no warnings;

    # since this apparently has a charset handler now which allows only
    # digits, the only check we have left is the max range (negative numbers
    # don't work, because '-' is not a digit)
    # it's a little strange, because 'fjdkfj' and '-1' now yield
    # 'InvalidValue', whereas '1000000000000' yields a 'MalformedValue'
    # we don't want multiple exceptions for the same error, because they all
    # turn up in the epp response and the karlsplatz-guys seem quite picky
    # about that.
    # all in all: whatever.
    #$value < 0x10000;
    # 16 bit unsigned int
    $value + 0 eq $value && $value >= 0 && $value < 0x10000;
}
1;

=method is_well_formed_value

FIXME

