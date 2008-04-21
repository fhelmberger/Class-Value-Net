package Class::Value::Net::Exception;

# $Id: Exception.pm 13644 2007-10-18 21:27:45Z gr $

use warnings;
use strict;


our $VERSION = '0.04';


use base 'Class::Value::Exception::Base';


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

