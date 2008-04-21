package Class::Value::Net::Exception::NAPTR::MalformedOrder;

# $Id: MalformedOrder.pm 11166 2006-04-19 11:31:26Z gr $

use strict;
use warnings;


our $VERSION = '0.02';


use base 'Class::Value::Net::Exception::NAPTR';


use constant default_message => 'Malformed Order [%s]';


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

{% p.write_inheritance %}

=head1 METHODS

=over 4

{% p.write_methods %}

=back

{% PROCESS standard_pod %}

=cut

