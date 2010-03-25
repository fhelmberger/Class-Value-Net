use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Services;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::NAPTR::CharacterString';

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::InvalidServices',
        recordfield => $value,);
}

sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::MalformedServices',
        recordfield => $value,);
}
1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME

