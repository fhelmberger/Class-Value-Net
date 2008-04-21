package Class::Value::Net::NAPTR::CharacterString;

# $Id: CharacterString.pm 11427 2006-05-09 13:00:16Z gr $

use strict;
use warnings;


our $VERSION = '0.02';


use base 'Class::Value::Net';


sub is_well_formed_value {
    my ($self, $value) = @_;
    return 1 unless defined $value;
    $self->SUPER::is_well_formed_value($value)
        && $value =~ m/^[\x20-\x7E]*$/;
}


sub normalize_value {
    my ($self, $value) = @_;
    return unless defined $value;
    $value =~ s/^"(.*)"$/$1/;
    $value;
}


sub stringify {
    my $self = shift;
    sprintf '"%s"', $self->value;
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

