use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::KeyTag;

use parent 'Class::Value::String';


sub is_valid_string_value {
    my ($self, $value) = @_;
    $value =~ m/^[0-9]*$/ && $value != 0;
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::DNSSEC::DS::InvalidKeyTag',
        recordfield => $value,);
}

1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME
