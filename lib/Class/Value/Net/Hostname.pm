use 5.008;
use strict;
use warnings;

package Class::Value::Net::Hostname;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net';

# Hostnames can end with a dot; however it will be normalized away. E.g.,
# 'foo.at.' is valid, but will be normalized to 'foo.at'.
#
# An undef value will be normalized to the empty string.
sub normalize_value {
    my ($self, $value) = @_;
    return '' unless defined $value;
    $value =~ s/\.$//;
    $value;
}

sub is_valid_normalized_value {
    my ($self, $value) = @_;

    # hostname can be undef or the empty string
    return 1 unless defined $value and length $value;
    return 0 unless $self->SUPER::is_valid_normalized_value($value);
    our $label_re ||= qr/[0-9a-z]([0-9a-z-]{0,61}[0-9a-z])?/;
    return
         $value eq lc($value)
      && length($value) <= 255
      && $value =~ /^$label_re(\.$label_re)+$/
      && $value =~ /[a-z]/;
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::MalformedHostname',
        hostname => $value,);
}
1;

=method is_valid_normalized_value

FIXME

=method normalize_value

FIXME

=method send_notify_value_invalid

FIXME

