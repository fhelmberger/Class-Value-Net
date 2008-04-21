package Class::Value::Net::IPAddress::IPv6;

# $Id: IPv6.pm 13522 2007-08-23 15:08:34Z ek $

use strict;
use warnings;


our $VERSION = '0.02';


use base 'Class::Value::Net::IPAddress';


use constant dns_rr_type => 'AAAA';


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

