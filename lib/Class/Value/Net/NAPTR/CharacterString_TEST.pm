package Class::Value::Net::NAPTR::CharacterString_TEST;

# $Id: CharacterString_TEST.pm 11427 2006-05-09 13:00:16Z gr $

use strict;
use warnings;
use Test::More;


our $VERSION = '0.04';


use base 'Class::Value::Test';


use constant TESTDATA => (
    {
        args => {},
        invalid => [
            sprintf("%c%c%c", 0x00, 0xff, 0x21),
        ],
    },
);


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

