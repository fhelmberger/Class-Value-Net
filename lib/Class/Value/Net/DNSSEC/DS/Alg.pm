use 5.008;
use strict;
use warnings;

package Class::Value::Net::DNSSEC::DS::Alg;

use parent 'Class::Value::Enum';

# http://www.iana.org/assignments/dns-sec-alg-numbers/dns-sec-alg-numbers.xhtml
# we support all algorithms that can be used for zone signing.

sub get_valid_values_list {
    [
        3,         # DSA/SHA1
        5,         # RSA/SHA-1
        6,         # DSA-NSEC3-SHA1
        7,         # RSASHA1-NSEC3-SHA1
        8,         # RSA/SHA-256
        10,        # RSA/SHA-512
        12,        # GOST R 34.10-2001
    ]
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::DNSSEC::DS::InvalidAlg',
        recordfield => $value,);
}

1;

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME
