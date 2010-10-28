use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::DigestType;

use parent 'Class::Value::Enum';

# http://www.iana.org/assignments/ds-rr-types/ds-rr-types.xhtml
# we support all mandatory and optional digest types.

sub get_valid_values_list {
    [
        1,         # SHA-1
        2,         # SHA-256
        3,         # GOST R 34.11-94
    ]
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::DNSSEC::DS::InvalidDigestType',
        recordfield => $value,);
}

1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME
