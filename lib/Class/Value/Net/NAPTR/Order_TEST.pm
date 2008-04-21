package Class::Value::Net::NAPTR::Order_TEST;

# $Id: Order_TEST.pm 11581 2006-06-06 14:29:18Z ek $

use strict;
use warnings;


our $VERSION = '0.04';


use base 'Class::Value::Net::NAPTR::UInt16_TEST';


sub expected_malformed_exception { 
    "Class::Value::Net::Exception::NAPTR::MalformedOrder"
};


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

