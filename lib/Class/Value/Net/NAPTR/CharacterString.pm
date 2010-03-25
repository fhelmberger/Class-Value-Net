use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::CharacterString;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net';

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

=method is_well_formed_value

FIXME

=method normalize_value

FIXME

=method stringify

FIXME

