package Class::Value::Net::Hostname;

# $Id: Hostname.pm 11985 2006-08-16 15:03:12Z gr $

use strict;
use warnings;


our $VERSION = '0.01';


use base 'Class::Value::Net';


# Hostnames can end with a dot; however it will be normalized away. E.g.,
# 'foo.at.' is valid, but will be normalized to 'foo.at'.
#
# An undef value will be normalized to the empty string.

sub normalize_value {
    my ($self, $value) = @_;
    return '' unless defined $value;
    $value =~ s/\.$//;
    $value;
}


sub is_valid_normalized_value {
    my ($self, $value) = @_;

    # hostname can be undef or the empty string
    return 1 unless defined $value and length $value;

    return 0 unless $self->SUPER::is_valid_normalized_value($value);
    our $label_re ||= qr/[0-9a-z]([0-9a-z-]{0,61}[0-9a-z])?/;
    return
        $value eq lc($value)  &&
        length($value) <= 255 &&
        $value =~ /^$label_re(\.$label_re)+$/ &&
        $value =~ /[a-z]/;
}


sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::MalformedHostname',
        hostname => $value,
    );
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

