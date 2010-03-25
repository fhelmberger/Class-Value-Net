use 5.008;
use strict;
use warnings;

package Class::Value::Net::NAPTR::Wildcard;

# ABSTRACT: Network-related value objects
# Just a boolean value, but has to have its own class to differentiate it from
# other boolean value objects.
use parent 'Class::Value::Boolean';
1;
