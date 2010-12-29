use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::KeyTag;

use parent 'Class::Value::String';


sub is_valid_string_value {
    my ($self, $value) = @_;
    return 1 unless defined($value) && length($value);
    # Don't call SUPER::; we don't want max length and character set to be
    # checked. 
    #
    # KeyTag should be a number >= 0 && < 65536
    $value =~ m/^[0-9]*$/ && $value >= 0 && $value < 65536;
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
