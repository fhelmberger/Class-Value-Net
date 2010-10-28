use 5.008;
use strict;
use warnings;

package Class::Value::Net::Exception::NAPTR::InvalidKeyTag;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Exception::DNSSEC';
use constant default_message => 'Invalid Key Tag [%s]';
