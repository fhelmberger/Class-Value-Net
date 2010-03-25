use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::UInt16_TEST;

# ABSTRACT: Network-related value objects
use Test::More;
use Error::Hierarchy::Test 'throws2_ok';
use parent 'Test::CompanionClasses::Base';
use constant PLAN => 2;

sub expected_malformed_exception {
    "Class::Value::Exception::NotWellFormedValue";
}

sub run {
    my $self = shift;
    $self->SUPER::run(@_);
    my $obj = $self->make_real_object;
    ok($obj->is_valid_value(4711), "ok 4711");
    local $Class::Value::ThrowSingleException = 1;
    throws2_ok {
        $obj->value(16663636363);
    }
    $self->expected_malformed_exception, qr/16663636363/;
}
1;

=method expected_malformed_exception

FIXME

