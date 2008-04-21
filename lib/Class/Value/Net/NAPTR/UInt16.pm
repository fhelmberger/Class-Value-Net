package Class::Value::Net::NAPTR::UInt16;

# $Id: UInt16.pm 11258 2006-04-25 14:47:36Z ek $

use strict;
use warnings;


our $VERSION = '0.04';


use base 'Class::Value::Net';


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


__END__

{% USE p = PodGenerated %}

=head1 NAME

{% p.package %} - network-related value objects

=head1 SYNOPSIS

    {% p.package %}->new;

=head1 DESCRIPTION

None yet. This is an early release; fully functional, but undocumented. The
next release will have more documentation.

=head1 METHODS

=over 4

{% p.write_methods %}

=back

{% p.write_inheritance %}

{% PROCESS standard_pod %}

=cut

