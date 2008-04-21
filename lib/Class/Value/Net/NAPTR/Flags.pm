package Class::Value::Net::NAPTR::Flags;

# $Id: Flags.pm 11149 2006-04-18 16:28:08Z ek $

use strict;
use warnings;


our $VERSION = '0.04';


use base 'Class::Value::Net::NAPTR::CharacterString';


sub is_well_formed_value {
    my ($self, $value) = @_;
    $self->SUPER::is_well_formed_value($value) &&
        length $value == 1;
}


sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
            'Class::Value::Net::Exception::NAPTR::InvalidFlags',
            recordfield => $value,
    );
}


sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
            'Class::Value::Net::Exception::NAPTR::MalformedFlags',
            recordfield => $value,
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
