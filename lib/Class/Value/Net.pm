package Class::Value::Net;

# $Id: Net.pm 13644 2007-10-18 21:27:45Z gr $

use strict;
use warnings;
use Error::Hierarchy::Mixin;  # get UNIVERSAL::record needed in subclasses


our $VERSION = '0.04';


use base 'Class::Value::String';


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

