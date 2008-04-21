package Class::Value::Net::NAPTR::Origin;

# $Id: Origin.pm 11570 2006-06-06 13:29:50Z gr $
#
# Just a boolean value, but has to have its own class to differentiate it from
# other boolean value objects.

use strict;
use warnings;


our $VERSION = '0.04';


use base 'Class::Value::Boolean';


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

