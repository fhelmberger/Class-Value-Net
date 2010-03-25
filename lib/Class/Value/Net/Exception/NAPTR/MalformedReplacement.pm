use 5.008;
use strict;
use warnings;

package Class::Value::Net::Exception::NAPTR::MalformedReplacement;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Exception::NAPTR';
use constant default_message => 'Malformed Replacement [%s]';
1;
