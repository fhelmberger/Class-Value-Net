use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Replacement;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Hostname';

# The replacement is essentially a hostname. It can be empty as well. If it is
# empty, it should stringify to '.' - this doesn't mean it should normalize to
# the dot. The empty value should be stored as such, and only during
# stringification will it become a dot.
sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::InvalidReplacement',
        recordfield => $value,);
}

sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::NAPTR::MalformedReplacement',
        recordfield => $value,);
}

sub stringify {
    my $self = shift;
    sprintf '%s', $self->SUPER::stringify() || '.';
}
1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME

=method stringify

FIXME

