package Class::Value::Net::NAPTR::UInt16_TEST;

# $Id: UInt16_TEST.pm 11581 2006-06-06 14:29:18Z ek $

use strict;
use warnings;
use Test::More;
use Error::Hierarchy::Test 'throws2_ok';


our $VERSION = '0.01';


use base 'Test::CompanionClasses::Base';


use constant PLAN => 2;


sub expected_malformed_exception { 
    "Class::Value::Exception::NotWellFormedValue"
};


sub run {
    my $self = shift;
    $self->SUPER::run(@_);

    my $obj = $self->make_real_object;
    ok($obj->is_valid_value(4711), "ok 4711");
    local $Class::Value::ThrowSingleException = 1;

    throws2_ok {
        $obj->value(16663636363);
    } $self->expected_malformed_exception,
      qr/16663636363/;

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

