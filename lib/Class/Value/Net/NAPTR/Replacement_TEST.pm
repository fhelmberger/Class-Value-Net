use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Replacement_TEST;

# ABSTRACT: Network-related value objects
use Test::More;
use parent 'Test::CompanionClasses::Base';
use constant PLAN => 3;

sub run {
    my $self = shift;
    $self->SUPER::run(@_);
    my $obj = $self->make_real_object;
    $obj->value("");
    is(sprintf("%s", $obj), '.', "stringify empty value to .");
    local $Class::Value::SkipChecks = 0;
    ok($obj->is_well_formed_value("1234567"), "well-formed");
    ok(!$obj->is_valid_value('x' x 512),      "too many chars");
}
1;
