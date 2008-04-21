package Class::Value::Net::NAPTR::Replacement;

# $Id: Replacement.pm 11241 2006-04-25 10:13:13Z gr $

use strict;
use warnings;


our $VERSION = '0.01';


use base 'Class::Value::Net::Hostname';


# The replacement is essentially a hostname. It can be empty as well. If it is
# empty, it should stringify to '.' - this doesn't mean it should normalize to
# the dot. The empty value should be stored as such, and only during
# stringification will it become a dot.


sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
            'Class::Value::Net::Exception::NAPTR::InvalidReplacement',
            recordfield => $value,
    );
}


sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
            'Class::Value::Net::Exception::NAPTR::MalformedReplacement',
            recordfield => $value,
    );
}


sub stringify {
    my $self = shift;
    sprintf '%s', $self->SUPER::stringify() || '.';
}


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

