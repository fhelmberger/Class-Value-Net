use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::Digest;

use parent 'Class::Value::String';

sub normalize_value {
    my ($self, $value) = @_;
    return unless defined($value);
    lc($value);
}

sub is_valid_string_value {
    my ($self, $value) = @_;
    return 1 unless defined($value) && length($value);
    # Don't call SUPER::; we don't want max length and character set to be
    # checked
    $value =~ m/^[[:xdigit:]]+$/;
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::DNSSEC::DS::InvalidDigest',
        recordfield => $value,);
}

1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME
