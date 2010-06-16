use 5.008;
use strict;
use warnings;

package Class::Value::Net::IPAddress;

# ABSTRACT: Network-related value objects
use Error::Hierarchy::Mixin;  # get record() for subclasses
use parent 'Class::Value::SemanticAdapter';
__PACKAGE__->mk_abstract_accessors(qw(dns_rr_type))
  ->mk_boolean_accessors(qw(forbid_internal));

use constant DEFAULTS => (
    forbid_internal => 1,
);

sub semantic_args {
    my $self = shift;
    (   $self->SUPER::semantic_args(@_),
        forbid_internal => $self->forbid_internal,
    );
}

sub is_internal {
    my $self = shift;
    my $value = @_ ? shift : $self->value;
    $self->adaptee->is_internal($value);
}

sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::InvalidIPAddress',
        ipaddr => $value,);
}

sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::MalformedIPAddress',
        ipaddr => $value,);
}
1;

=method is_internal

FIXME

=method semantic_args

FIXME

=method send_notify_value_invalid

FIXME

=method send_notify_value_not_wellformed

FIXME

