package Class::Value::Net::NAPTR::Flags_TEST;

# $Id: Flags_TEST.pm 11636 2006-06-13 11:27:25Z gr $

use strict;
use warnings;
use Test::More;


our $VERSION = '0.03';


use base 'Class::Value::Test';


use constant TESTDATA => (
    {
        args => {},
        valid => [ qw(
            x
        ) ],
        invalid => [ qw(
            xx
        ) ],
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

{% p.write_inheritance %}

=head1 METHODS

=over 4

{% p.write_methods %}

=back

{% PROCESS standard_pod %}

=cut

