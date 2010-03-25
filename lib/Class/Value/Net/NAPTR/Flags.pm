use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Flags;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::NAPTR::CharacterString';

sub is_well_formed_value {
    my ($self, $value) = @_;
    $self->SUPER::is_well_formed_value($value)
      && length $value == 1;
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::InvalidFlags',
        recordfield => $value,);
}

sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::MalformedFlags',
        recordfield => $value,);
}
1;

=method is_well_formed_value

FIXME

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME

