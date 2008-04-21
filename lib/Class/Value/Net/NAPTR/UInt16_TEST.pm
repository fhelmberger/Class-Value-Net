package Class::Value::Net::NAPTR::UInt16_TEST;

# $Id: UInt16_TEST.pm 11581 2006-06-06 14:29:18Z ek $

use strict;
use warnings;
use Test::More;
use Error::Hierarchy::Test 'throws2_ok';


our $VERSION = '0.02';


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

