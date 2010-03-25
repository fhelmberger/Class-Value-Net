use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Preference;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::NAPTR::UInt16';

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::InvalidPreference',
        recordfield => $value,);
}

sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::MalformedPreference',
        recordfield => $value,);
}
1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME

