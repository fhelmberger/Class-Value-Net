use 5.008;
use strict;
use warnings;

package Class::Value::Net::Exception::DNSSEC::DS::InvalidDigest;

# ABSTRACT: Network-related value objects
use parent 'Class::Value::Net::Exception::DNSSEC';
use constant default_message => 'Invalid Digest [%s]';
1;
