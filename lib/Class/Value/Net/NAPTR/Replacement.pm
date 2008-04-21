package Class::Value::Net::NAPTR::Replacement;

# $Id: Replacement.pm 11241 2006-04-25 10:13:13Z gr $

use strict;
use warnings;


our $VERSION = '0.04';


use base 'Class::Value::Net::Hostname';


# The replacement is essentially a hostname. It can be empty as well. If it is
# empty, it should stringify to '.' - this doesn't mean it should normalize to
# the dot. The empty value should be stored as such, and only during
# stringification will it become a dot.


sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
            'Class::Value::Net::Exception::NAPTR::InvalidReplacement',
            recordfield => $value,
    );
}


sub send_notify_value_not_wellformed {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
            'Class::Value::Net::Exception::NAPTR::MalformedReplacement',
            recordfield => $value,
    );
}


sub stringify {
    my $self = shift;
    sprintf '%s', $self->SUPER::stringify() || '.';
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

