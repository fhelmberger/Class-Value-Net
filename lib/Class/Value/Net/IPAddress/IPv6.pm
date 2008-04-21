package Class::Value::Net::IPAddress::IPv6;

# $Id: IPv6.pm 13522 2007-08-23 15:08:34Z ek $

use strict;
use warnings;
use Net::IP qw/ip_is_ipv6 ip_iptype/;


our $VERSION = '0.01';


use base 'Class::Value::Net::IPAddress';


sub is_well_formed_value {
    my ($self, $value) = @_;
    return $self->SUPER::is_well_formed_value($value) && ip_is_ipv6($value);
}


sub is_internal {
    my $self = shift;
    my $value = @_ ? shift : $self->value;
    (ip_iptype($value, 6) || '') eq 'GLOBAL-UNICAST';
}


sub dns_rr_type { "AAAA"; }


1;


__END__

=head1 NAME

Class::Value::Net - network-related value objects

=head1 SYNOPSIS

None yet (see below).

=head1 DESCRIPTION

None yet. This is an early release; fully functional, but undocumented. The
next release will have more documentation.

=head1 TAGS

If you talk about this module in blogs, on del.icio.us or anywhere else,
please use the C<classvaluenet> tag.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests to
C<bug-class-value-net@rt.cpan.org>, or through the web interface at
L<http://rt.cpan.org>.

=head1 INSTALLATION

See perlmodinstall for information and options on installing Perl modules.

=head1 AVAILABILITY

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit <http://www.perl.com/CPAN/> to find a CPAN
site near you. Or see <http://www.perl.com/CPAN/authors/id/M/MA/MARCEL/>.

=head1 AUTHORS

Marcel GrE<uuml>nauer, C<< <marcel@cpan.org> >>

Heinz Ekker C<< ek@univie.ac.at >>

=head1 COPYRIGHT AND LICENSE

Copyright 2007 by Marcel GrE<uuml>nauer

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

