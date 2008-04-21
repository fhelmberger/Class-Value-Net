package Class::Value::Net::Exception::MalformedHostname;

# $Id: MalformedHostname.pm 13653 2007-10-22 09:11:20Z gr $

use warnings;
use strict;


our $VERSION = '0.04';


use base 'Class::Value::Net::Exception';


__PACKAGE__->mk_scalar_accessors(qw(hostname));


use constant default_message => 'Malformed hostname [%s]';
use constant PROPERTIES => ( 'hostname' );


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
