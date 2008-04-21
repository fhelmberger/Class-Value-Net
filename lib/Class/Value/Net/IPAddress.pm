package Class::Value::Net::IPAddress;

# $Id: IPAddress.pm 13653 2007-10-22 09:11:20Z gr $

use strict;
use warnings;


our $VERSION = '0.04';


use base 'Class::Value::SemanticAdapter';


__PACKAGE__
    ->mk_abstract_accessors(qw(dns_rr_type))
    ->mk_boolean_accessors(qw(forbid_internal));


sub semantic_args {
    my $self = shift;
    (
        $self->SUPER::semantic_args(@_),
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
        ipaddr => $value,
    );
}


sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::MalformedIPAddress',
        ipaddr => $value,
    );
}


1;


__END__

{% USE p = PodGenerated %}

=head1 NAME

{% p.package %} - network-related value objects

=head1 SYNOPSIS

    {% p.package %}->new;

=head1 DESCRIPTION

None yet. This is an early release; fully functional, but undocumented. The
next release will have more documentation.

=head1 METHODS

=over 4

{% p.write_methods %}

=back

{% p.write_inheritance %}

{% PROCESS standard_pod %}

=cut

