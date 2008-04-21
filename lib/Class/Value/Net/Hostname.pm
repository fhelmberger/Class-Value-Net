package Class::Value::Net::Hostname;

# $Id: Hostname.pm 11985 2006-08-16 15:03:12Z gr $

use strict;
use warnings;


our $VERSION = '0.03';


use base 'Class::Value::Net';


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
        $value eq lc($value)  &&
        length($value) <= 255 &&
        $value =~ /^$label_re(\.$label_re)+$/ &&
        $value =~ /[a-z]/;
}


sub send_notify_value_invalid {
    my ($self, $value) = @_;
    local $Error::Depth = $Error::Depth + 2;
    $self->exception_container->record(
        'Class::Value::Net::Exception::MalformedHostname',
        hostname => $value,
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

{% p.write_inheritance %}

=head1 METHODS

=over 4

{% p.write_methods %}

=back

{% PROCESS standard_pod %}

=cut

