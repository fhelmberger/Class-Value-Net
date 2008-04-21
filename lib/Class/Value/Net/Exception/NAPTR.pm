package Class::Value::Net::Exception::NAPTR;

# $Id: NAPTR.pm 13653 2007-10-22 09:11:20Z gr $

use warnings;
use strict;


our $VERSION = '0.02';


use base 'Class::Value::Net::Exception';


__PACKAGE__->mk_scalar_accessors(qw(recordfield));


use constant default_message =>
    'NAPTR error in field [%s]';

use constant PROPERTIES => (qw/recordfield/);


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

