package Class::Value::Net::NAPTR::Replacement_TEST;

# $Id: Replacement_TEST.pm 11636 2006-06-13 11:27:25Z gr $

use strict;
use warnings;
use Test::More;


our $VERSION = '0.04';


use base 'Test::CompanionClasses::Base';


use constant PLAN => 3;


sub run {
    my $self = shift;
    $self->SUPER::run(@_);

    my $obj = $self->make_real_object;
    $obj->value("");
    is(sprintf("%s", $obj), '.', "stringify empty value to .");
    ok($obj->is_well_formed_value("1234567"), "well-formed");
    ok(!$obj->is_valid_value('x'x512), "too many chars");
}


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
